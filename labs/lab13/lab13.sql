.read data.sql


CREATE TABLE bluedog AS
  SELECT color,pet FROM students WHERE color='blue' AND pet='dog';

CREATE TABLE bluedog_songs AS
  SELECT color,pet,song FROM students WHERE color='blue' AND pet='dog';


CREATE TABLE smallest_int_having AS
  SELECT time,smallest FROM students GROUP BY smallest HAVING count(*)=1;


CREATE TABLE matchmaker AS
  SELECT a.pet,a.song,a.color,b.color FROM students AS a, students AS b WHERE a.pet=b.pet and a.song=b.song and a.time<b.time;


CREATE TABLE sevens AS
  SELECT a.seven FROM students AS a, numbers AS b WHERE a.number=7 and b.'7'='True' and a.time=b.time;


CREATE TABLE average_prices AS
  SELECT category,AVG(MSRP) as average_price FROM products GROUP BY category;


CREATE TABLE lowest_prices AS
  SELECT store, item, MIN(price) as price FROM inventory GROUP BY item;


CREATE TABLE goods_for_each_catogory AS
  SELECT a.category, a.name, b.store, MIN(b.price/a.rating) FROM products AS a, lowest_prices AS b WHERE a.name=b.item GROUP BY a.category ;

CREATE TABLE shopping_list AS
  SELECT name,store FROM goods_for_each_catogory; 


CREATE TABLE total_bandwidth AS
  SELECT SUM(b.Mbs) FROM shopping_list as a, stores as b WHERE a.store=b.store;


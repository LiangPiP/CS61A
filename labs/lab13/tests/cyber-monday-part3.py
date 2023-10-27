test = {
  'name': 'cyber-monday-part3',
  'points': 1,
  'suites': [
    {
      'cases': [
        {
          'code': r"""
          sqlite> SELECT * FROM shopping_list;
          kBook|RestBuy
          GameStation|Hallmart
          uPhone|RestBuy
          """,
          'hidden': False,
          'locked': False,
          'multiline': False
        }
      ],
      'ordered': False,
      'scored': True,
      'setup': r"""
      sqlite> .read lab13.sql
      """,
      'teardown': '',
      'type': 'sqlite'
    }
  ]
}

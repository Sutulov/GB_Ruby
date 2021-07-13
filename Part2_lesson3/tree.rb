# frozen_string_literal: true

TREE = [
  'index.rb',
  {
    'src' => [
      'file01.rb',
      'file02.rb',
      'file03.rb'
    ]
  },
  {
    'doc' => [
      'file01.mb',
      'file02.mb',
      'file03.mb',
      {
        'details' => [
          'index.mb',
          'arch.mb'
        ]
      }
    ]
  }
].freeze

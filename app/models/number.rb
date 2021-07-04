class Number < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '2面' },
    { id: 3, name: '3面' },
    { id: 4, name: '4面' },
    { id: 5, name: '5面' },
    { id: 6, name: '6面' },
    { id: 7, name: '7面' },
    { id: 8, name: '8面' },
    { id: 9, name: '9面' },
    { id: 10, name: '10面' },
    { id: 11, name: '11面' },
    { id: 12, name: '12面' },
    { id: 13, name: '13面' },
    { id: 14, name: '14面' },
    { id: 15, name: '15面' }
]

  include ActiveHash::Associations
  has_many :coats
end

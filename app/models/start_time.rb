class StartTime < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '8:30' },
    { id: 3, name: '9:00' },
    { id: 4, name: '10:00' },
    { id: 5, name: '11:00' },
    { id: 6, name: '12:00' },
    { id: 7, name: '13:00' }

  ]

  include ActiveHash::Associations
  has_many :coats
end

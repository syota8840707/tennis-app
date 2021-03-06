class FinishTime < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '14:00' },
    { id: 3, name: '15:00' },
    { id: 4, name: '16:00' },
    { id: 5, name: '17:00' },
    { id: 6, name: '18:00' },
    { id: 7, name: '19:00' },
    { id: 8, name: '20:00' },
    { id: 9, name: '21:00' },
    { id: 10, name: '22:00' },
    { id: 11, name: '23:00' }
  ]

  include ActiveHash::Associations
  has_many :coats
end

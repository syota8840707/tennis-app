FactoryBot.define do
  factory :user do
    id { 1 }
    nickname              { 'test' }
    tennis_year           { 1 }
    email                 { 'test@example' }
    password              { '000aaaa' }
    password_confirmation { password }
  end
end

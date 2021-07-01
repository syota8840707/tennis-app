FactoryBot.define do
  factory :user do
    nickname              { 'test' }
    tennis_year           { 1 }
    email                 { 'test@example' }
    password              { '000aaaa' }
    password_confirmation { password }
  end
end

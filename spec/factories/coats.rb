FactoryBot.define do
  factory :coat do
    name           { 'かかかかか' }
    prefecture_id  { 2 }
    city           { '目黒市' }
    address        { '古代１−１' }
    start_time_id  { 4 }
    finish_time_id { 3 }
    number_id      { 9 }
    info           { 'かかかかかか' }
    association :user
    after(:build) do |coat|
      coat.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end

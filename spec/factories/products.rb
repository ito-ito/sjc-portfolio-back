FactoryBot.define do
  factory :product do
    name { 'name' }
    description { 'description' }
    url { 'http://example.com' }
    image_url { 'http://img.example.com' }
  end
end

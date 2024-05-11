FactoryBot.define do
  factory :career do
    title { 'title' }
    start_date { '2024-01-01'.to_date }
    end_date { '2024-03-31'.to_date }
  end
end

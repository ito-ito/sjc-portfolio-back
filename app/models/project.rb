class Project < ApplicationRecord
  validates :title, presence: true
  validates :start_date, presence: true
end

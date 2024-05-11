class Skill < ApplicationRecord
  validates :name, presence: true
  validates :level, inclusion: { in: (1..100) }
end

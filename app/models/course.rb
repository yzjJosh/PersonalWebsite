class Course < ApplicationRecord
  belongs_to :education, counter_cache: true

  validates :name, presence: true
end

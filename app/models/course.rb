class Course < ApplicationRecord
  belongs_to :education

  validates :name, presence: true
end

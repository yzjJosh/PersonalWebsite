class Education < ApplicationRecord
  belongs_to :person
  has_many :projects, dependent: :destroy
  has_many :courses, dependent: :destroy
end

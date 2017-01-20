class Job < ApplicationRecord
  belongs_to :person
  has_many :projects, dependent: :destroy
end

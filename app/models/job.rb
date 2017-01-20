class Job < ApplicationRecord
  belongs_to :person
  has_many :projects, dependent: :destroy

  validates :company, :title, :start_time, presence: true

end

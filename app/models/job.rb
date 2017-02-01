class Job < ApplicationRecord
  belongs_to :person, counter_cache: true
  has_many :projects, dependent: :destroy

  validates :company, :title, :start_time, presence: true
  mount_uploader :photo, JobPhotoUploader

end

class Education < ApplicationRecord
  belongs_to :person, counter_cache: true
  has_many :projects, dependent: :destroy
  has_many :courses, dependent: :destroy

  validates :school, :degree, :major, :start_time, presence: true
  mount_uploader :photo, EducationPhotoUploader
end

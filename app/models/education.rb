class Education < ApplicationRecord
  belongs_to :person
  has_many :projects, dependent: :destroy
  has_many :courses, dependent: :destroy

  validates :school, :degree, :start_time, presence: true
  mount_uploader :photo, EducationPhotoUploader
end

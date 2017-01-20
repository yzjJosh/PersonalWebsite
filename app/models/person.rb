class Person < ApplicationRecord
    has_many :jobs, dependent: :destroy
    has_many :educations, dependent: :destroy
    has_many :honors, dependent: :destroy
    has_many :publications, dependent: :destroy
    has_many :interests, dependent: :destroy
    has_many :skills, dependent: :destroy
    has_many :languages, dependent: :destroy

    validates :name, :profile_photo_url, :title, :company_or_school, :email, presence: true 
end

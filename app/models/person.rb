class Person < ApplicationRecord
    has_many :jobs, dependent: :destroy
    has_many :educations, dependent: :destroy
    has_many :honors, dependent: :destroy
    has_many :publications, dependent: :destroy
    has_many :interests, dependent: :destroy
    has_many :skills, dependent: :destroy
    has_many :languages, dependent: :destroy

    validates :name, :profile_photo, :title, :company_or_school, :email, presence: true

    mount_uploader :profile_photo, ProfilePhotoUploader
    mount_uploader :wechat_qrcode, WechatQrcodeUploader  
end

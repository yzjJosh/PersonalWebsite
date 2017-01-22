class Slide < ApplicationRecord
    validates :title, presence: true
    mount_uploader :background, SlideBackgroundUploader
end

class Course < ApplicationRecord
  belongs_to :education, dependent: :destroy    
end

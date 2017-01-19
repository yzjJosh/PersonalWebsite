class Project < ApplicationRecord
  belongs_to :education, dependent: :destroy
  belongs_to :job, dependent: :destroy    
end

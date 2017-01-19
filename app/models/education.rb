class Education < ApplicationRecord
  belongs_to :person, dependent: :destroy    
end

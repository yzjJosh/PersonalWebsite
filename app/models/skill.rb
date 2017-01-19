class Skill < ApplicationRecord
  belongs_to :person, dependent: :destroy    
end

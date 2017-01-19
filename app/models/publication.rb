class Publication < ApplicationRecord
  belongs_to :person, dependent: :destroy    
end

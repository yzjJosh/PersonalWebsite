class Interest < ApplicationRecord
  belongs_to :person, dependent: :destroy    
end

class Honor < ApplicationRecord
    belongs_to :person, dependent: :destroy    
end

class Language < ApplicationRecord
  belongs_to :person, dependent: :destroy
end

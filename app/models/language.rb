class Language < ApplicationRecord
  belongs_to :person, counter_cache: true

  validates :name, presence: true

end

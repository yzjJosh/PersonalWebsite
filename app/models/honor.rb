class Honor < ApplicationRecord
  belongs_to :person, counter_cache: true

  validates :name, :time, presence: true

end

class Publication < ApplicationRecord
  belongs_to :person

  validates :name, :time, presence: true

end

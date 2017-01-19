class Job < ApplicationRecord
  belongs_to :person, dependent: :destroy
end

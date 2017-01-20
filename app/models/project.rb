class Project < ApplicationRecord
  belongs_to :education, optional: true
  belongs_to :job, optional: true
end

class EducationAndJobValidator < ActiveModel::Validator
  def validate(record)
    if record.job_id.blank? && record.education_id.blank?
        record.errors[:job_id] << " can't be empty when education is empty"
        record.errors[:education_id] << "can't be empty when job is empty"
    end
    if !record.job_id.blank? && !record.education_id.blank?
        record.errors[:job_id] << " can't be presented when education is presented"
        record.errors[:education_id] << "can't be presented when job is presented"
    end
  end
end

class Project < ApplicationRecord
  belongs_to :education, optional: true, counter_cache: true
  belongs_to :job, optional: true, counter_cache: true

  validates :name, :start_time, presence: true
  validates_with EducationAndJobValidator

end

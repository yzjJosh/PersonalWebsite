class ChangeGpaScaleFieldInEducations < ActiveRecord::Migration[5.0]
  def change
    change_column :educations, :GPA_scale, :decimal, :precision => 10, :scale => 2
  end
end

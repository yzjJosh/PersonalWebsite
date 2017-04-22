class ChangeGpaFieldInEducations < ActiveRecord::Migration[5.0]
  def change
      change_column :educations, :GPA, :decimal, :precision => 10, :scale => 2
  end
end

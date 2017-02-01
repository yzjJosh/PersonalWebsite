class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.string :school
      t.string :degree
      t.string :major
      t.string :location
      t.timestamp :start_time
      t.timestamp :end_time
      t.decimal :GPA
      t.decimal :GPA_scale
      t.string :photo
      t.text :description
      t.belongs_to :person, foreign_key: true

      t.timestamps
    end
  end
end

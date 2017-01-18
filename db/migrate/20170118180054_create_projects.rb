class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.timestamp :start_time
      t.timestamp :end_time
      t.text :description
      t.belongs_to :education, foreign_key: true
      t.belongs_to :job, foreign_key: true

      t.timestamps
    end
  end
end

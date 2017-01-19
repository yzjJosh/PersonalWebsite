class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :title
      t.string :location
      t.timestamp :start_time
      t.timestamp :end_time
      t.text :description
      t.belongs_to :person, foreign_key: true

      t.timestamps
    end
  end
end

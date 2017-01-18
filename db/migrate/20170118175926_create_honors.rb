class CreateHonors < ActiveRecord::Migration[5.0]
  def change
    create_table :honors do |t|
      t.string :name
      t.timestamp :time
      t.string :granted_by
      t.string :location
      t.text :description
      t.belongs_to :person, foreign_key: true

      t.timestamps
    end
  end
end

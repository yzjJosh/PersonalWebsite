class CreateInterests < ActiveRecord::Migration[5.0]
  def change
    create_table :interests do |t|
      t.string :name
      t.text :description
      t.belongs_to :person, foreign_key: true

      t.timestamps
    end
  end
end

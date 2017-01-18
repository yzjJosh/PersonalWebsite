class CreatePublications < ActiveRecord::Migration[5.0]
  def change
    create_table :publications do |t|
      t.string :name
      t.timestamp :time
      t.text :description
      t.belongs_to :person, foreign_key: true

      t.timestamps
    end
  end
end

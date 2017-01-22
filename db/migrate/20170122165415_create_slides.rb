class CreateSlides < ActiveRecord::Migration[5.0]
  def change
    create_table :slides do |t|
      t.string :title
      t.text :content
      t.string :background

      t.timestamps
    end
  end
end

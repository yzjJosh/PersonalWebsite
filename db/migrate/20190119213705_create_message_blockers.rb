class CreateMessageBlockers < ActiveRecord::Migration[5.0]
  def change
    create_table :message_blockers do |t|
      t.string :rule_name
      t.string :description
      t.string :name_matcher
      t.string :email_matcher
      t.string :ip_matcher
      t.string :message_matcher

      t.timestamps
    end
    add_index :message_blockers, :rule_name, unique: true
  end
end

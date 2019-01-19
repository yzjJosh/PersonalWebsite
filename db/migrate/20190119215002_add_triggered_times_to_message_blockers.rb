class AddTriggeredTimesToMessageBlockers < ActiveRecord::Migration[5.0]
  def change
    add_column :message_blockers, :triggered_times, :integer, :null => false, :default => 0
  end
end

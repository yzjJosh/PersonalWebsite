class AddIpToMessage < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :ip, :string
  end
end

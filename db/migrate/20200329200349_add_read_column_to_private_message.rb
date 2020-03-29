class AddReadColumnToPrivateMessage < ActiveRecord::Migration[6.0]
  def change
    add_column :private_messages, :read, :boolean, default: false
  end
end

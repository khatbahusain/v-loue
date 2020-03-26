class AddCoulumnToPrivateMessages < ActiveRecord::Migration[6.0]
  def change
    add_column :private_messages, :content, :string
  end
end

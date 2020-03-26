class PrivateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :private_messages do |t|
      t.references :recipientMP, index: true
      t.references :senderMP, index: true

      t.timestamps
    end
  end
end

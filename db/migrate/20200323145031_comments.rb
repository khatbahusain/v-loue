class Comments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :sender, index: true
      t.references :recipient, index: true
      t.string :content, null: true, default: " "
      t.integer :note, null: true, default: 5
      t.timestamps
    end
  end
end

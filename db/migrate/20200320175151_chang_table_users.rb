class ChangTableUsers < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.change :first_name, :string, null: true, default: " "
      t.change :last_name, :string, null: true, default: " "
      t.change :birthday, :datetime, null: true
    end
  end
end


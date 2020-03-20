class AddDefaultBirthdayToUsers < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.change :birthday, :datetime, null: true, default: "21-05-1990 10:00"
    end
  end
end

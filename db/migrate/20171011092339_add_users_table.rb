class AddUsersTable < ActiveRecord::Migration[5.1]
  def change
	  create_table :users do |t|
      t.string :username, unique: true, null: false
      t.string :password, null: false
      t.datetime :confirmed_at

      t.timestamps null: false
  	end
  end
end

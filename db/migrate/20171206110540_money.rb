class Money < ActiveRecord::Migration[5.1]
	def change
  	create_table :savings do |t|
  		t.integer :user_id
    	t.float :cash, null: false
	end
  end
end

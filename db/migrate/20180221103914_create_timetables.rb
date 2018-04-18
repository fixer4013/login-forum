class CreateTimetables < ActiveRecord::Migration[5.1]
  def change
    create_table :timetables do |t|
      
      t.integer :user_id
      t.datetime :date
      t.string :ammount

      t.timestamps
    end
  end
end

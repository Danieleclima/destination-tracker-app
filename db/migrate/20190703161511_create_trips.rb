class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.date :start_date 
      t.date :end_date
      t.integer :country_id
      t.integer :user_id 
      t.string :description
    end
  end
end

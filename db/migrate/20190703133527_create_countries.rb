class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name 
      t.integer :user_id
      t.boolean :favourite_countries 
      t.boolean :visited_countries 
      t.boolean :bucket_list
    end
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password 
      t.interger :favourite_countries 
      t.interger :visited_countries
      t.interger :bucket_list
    end
  end
end

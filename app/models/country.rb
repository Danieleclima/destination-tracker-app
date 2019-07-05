class Country < ActiveRecord::Base 

    belongs_to :user

    attr_accessor :name, :favorite_countries, :visited_countries, :bucket_list

end
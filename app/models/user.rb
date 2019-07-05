class User < ActiveRecord::Base 

    has_secure_password
    has_many :favourite_countries, :class_name => "Country"
    has_many :visited_countries, class_name => "Country"
    has_many :bucket_list_countries, class_name => "Country"

end
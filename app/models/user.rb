class User < ActiveRecord::Base 

    has_secure_password
    has_many :favourite_countries, :class_name => "Country"


end
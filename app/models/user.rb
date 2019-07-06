class User < ActiveRecord::Base 

    has_secure_password 
    has_many :countries 
    has_many :trips 
   
    attr_accessor :username, :password
end
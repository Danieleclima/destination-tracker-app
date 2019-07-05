class Trip < ActiveRecord::Base 
    
    belongs_to :user
    belongs_to :country 

    attr_accessor :name, :start_date, :end_date, :country, :description
end

class TripController < ApplicationController

    get '/trips/new' do 
        erb :'/trip/new' 
    end 

    post '/trips' do
       @trip =  Trip.create(params[:trip])
       binding.pry
    end
    
end
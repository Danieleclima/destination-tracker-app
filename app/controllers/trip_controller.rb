
class TripController < ApplicationController

    get '/trips/new' do 
        erb :'/trip/new' 
    end 

    post '/trips' do
       @trip =  Trip.create(params[:trip])
       @country = Country.find(@trip.country_id)
       redirect "trips/#{@trip.id}"
    end

    get '/trips/:id' do
        @trip = Trip.find(params[:id])
        erb :'/trip/show'
    end
    
end
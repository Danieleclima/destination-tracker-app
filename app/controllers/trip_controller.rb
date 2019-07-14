
class TripController < ApplicationController

    get '/trips/new' do 
        erb :'/trip/new' 
    end 

    post '/trips' do
       @trip =  Trip.create(params[:trip])
       redirect "trips/#{@trip.id}"
    end

    get '/trips/:id' do
        @trip = Trip.find(params[:id])
        erb :'/trip/show'
    end

    get '/users/:id/edit' do 
        @trip = Trip.find(params[:id])
        erb :'/trip/edit'
    end

    delete '/trips/:id' do
        @trip = Trip.find(params[:id]) 
        @trip.destroy 
    end
    
end
class CountryController < ApplicationController

    get '/countries' do
       @countries =  Country.all
       erb :'/country/show' 
    end

    post '/countries' do
        @country =  Country.create(params[:country])
        redirect "/countries"
     end

end
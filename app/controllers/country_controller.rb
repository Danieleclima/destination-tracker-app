class CountryController < ApplicationController

    get '/countries' do
       @countries =  Country.all
       erb :'/country/show' 
    end


end


class UserController < ApplicationController

get '/users/new' do 
    erb :'/user/new' 
end

post '/users' do 
    @user = User.create(params[:user])
    erb :'/user/show' 
end

end
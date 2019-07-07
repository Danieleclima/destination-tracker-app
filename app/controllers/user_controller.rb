

class UserController < ApplicationController

get '/users/new' do 
    erb :'/user/new' 
end

post '/users' do 
    @user = User.create(params[:user])
    redirect "users/#{@user.id}"
end

get '/users/:id' do
    @user = User.find(params[:id])
    erb :'/user/show'
end



end
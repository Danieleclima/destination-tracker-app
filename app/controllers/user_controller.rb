

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

get '/users/:id/edit' do 
    @user = User.find(params[:id])
    erb :'/user/edit'
end

patch '/users/:id' do
    @user = User.find(params[:id])
    @user.update(params[:user])
    redirect "users/#{@user.id}"
end

delete '/users/:id' do 
    @user = User.find(params[:id])
    @user.destroy
    redirect "/"
end

post '/login' do
    @user = User.find_by username: (params[:username])
    if @user
      session[:user_id] = @user.id
      redirect "users/#{@user.id}"
    else
    erb :error
    end
end

post '/users/new' do
    redirect "/users/new" 
end

helpers do
    def logged_in?
        !!session[:user_id]
    end

    def current_user
        User.find(session[:user_id])
    end
end

end
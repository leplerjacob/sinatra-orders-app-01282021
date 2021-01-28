class UserController < ApplicationController

    # this calls a view under views/users for signup for user. Must create new view for user
    get '/users/signup' do 
        erb :'/users/signup'
    end

    post '/users/signup' do
        # params.inspect: returns hash of all values passed into the form


        # Takes in values from form input in /users/signup, and passes as a hash to User.create
        @user = User.create(username: params[:username], password: params[:password])
        redirect "/users/#{@user.id}"
    end
  
    # This runs because of redirect in users/signup form submission
    # User.find to get id from url, and render instance variable to /users/show view
    get '/users/:id' do
        @user = User.find(params[:id])
        erb :'/users/show'
    end

end

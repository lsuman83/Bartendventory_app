class UsersController < ApplicationController

  # GET: /users/new
  get "/users/new" do
    
    if logged_in?
      erb :"/users/new.html"
    else
      redirect "/signup"
    end

  end

  # POST: /users
  post "/users" do

    @user = User.new(username: params[:username], email: params[:email], password: params[:password])
  
    if @user.save
      session[:id] = @user.id
      redirect "/"
    else
      erb :'/users/new.html'
    end

  end

  # GET: /users/5
  get "/users/:id" do
    erb :"/users/show.html"
  end

  # GET: /users/5/edit
  get "/users/:id/edit" do
    erb :"/users/edit.html"
  end

  # PATCH: /users/5
  patch "/users/:id" do
    redirect "/users/:id"
  end

 
  delete "/logout" do
    session.clear
    redirect "/login"
  end
end

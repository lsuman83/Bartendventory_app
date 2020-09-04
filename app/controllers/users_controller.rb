class UsersController < ApplicationController

  # GET: /users/new
  get "/signup" do
    
    if logged_in?
      redirect "/"
    else
      erb :"/users/new.html"
    end

  end

  # POST: /users
  post "/signup" do

    @user = User.new(name: params[:name], email: params[:email], password: params[:password])
  binding.pry
    if @user.save
      session[:id] = @user.id
      redirect "/"
    else
      erb :'/users/new.html'
    end

  end

  # GET: /users/5
  get "/users/:slug" do
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

class UsersController < ApplicationController


  get "/signup" do
    
    if logged_in?

      redirect "/"

    else

      erb :"/users/new.html"
      
    end

  end

  
  post "/signup" do

    @user = User.new(name: params[:name], email: params[:email], password: params[:password])

    if @user.save

      session[:id] = @user.id
      redirect "/"

    else

      erb :'/users/new.html'

    end

  end

  
  get "/users/:slug" do

    erb :"/users/show.html"

  end


  get "/users/:id/edit" do

    erb :"/users/edit.html"

  end

  
  patch "/users/:id" do

    redirect "/users/:id"

  end

 
  delete "/logout" do
   
    logout?

  end

end

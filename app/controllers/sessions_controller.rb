class SessionsController < ApplicationController

    get "/login" do

      if logged_in?
        redirect "/"
      else
        erb :"/sessions/login.html"
      end

    end
    
    post "/login" do
        
        @user = User.find_by_name(params[:name])
      
        if @user && @user.authenticate(params[:password])
          session[:id] = @user.id
          redirect "/"
        else
          @error = "Invalid username or password"
          erb :'/sessions/login.html'
        end
    
    end

    get "/logout" do
   
      logout
  
    end


end
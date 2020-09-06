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
        binding.pry
        if @user && @user.authenticate(params[:password])
          session[:id] = @user.id
          redirect "/"
        else
          erb :'/sessions/login.html'
        end
    
      end


end
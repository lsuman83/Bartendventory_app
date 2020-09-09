require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :sessions, :true
    set :session_secret, ENV['SESSION_SECRET']
  end

  get "/" do

    erb :welcome

  end

  get "/about" do

    erb :about

  end

  private

  def current_user

    User.find_by_id(session[:id])

  end

  def logged_in?

    !!current_user

  end

  def reset_if_not_logged_in?

    if !logged_in?

      redirect "/login"
      
    end

  end

  def logout?

    session.clear
    redirect "/login"

  end

end

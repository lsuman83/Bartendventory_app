class CabinetsController < ApplicationController

    get "/cabinets" do
        @user = current_user
       
        if @user && @user.cabinets.empty?
            redirect "/cabinets/new"
        end

        if logged_in?
            @user.cabinets = Cabinet.all
            erb :'/cabinets/index.html'
        else
            redirect "/login"
        end

    end

    get "/cabinets/new" do

        @liquors = Liquor.all
        erb :'/cabinets/new.html'

    end

    post "/cabinets" do
        @user = current_user
       @user.cabinets << Cabinet.create(name: params[:cabinet][:name])
       redirect "/cabinets/#{@user.cabinets.last.slug}"
    end

    get "/cabinets/:slug" do
        @cabinet = Cabinet.find_by_slug(params[:slug])

        @liquors = Liquor.all

        
        erb :'/cabinets/show.html'
    

    end



end

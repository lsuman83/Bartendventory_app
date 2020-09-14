class CabinetsController < ApplicationController

    get "/cabinets" do

        @user = current_user
       
        if @user && @user.cabinets.empty?
            redirect "/cabinets/new"
        end

        if logged_in?
            erb :'/cabinets/index.html'
        else
            redirect "/login"
        end

    end

    get "/cabinets/new" do

        redirect "/login" if !logged_in?

        @cabinets = Cabinet.all
        erb :'/cabinets/new.html'

    end

    post "/cabinets" do

       @user = current_user
       @user.cabinets << Cabinet.create(name: params[:cabinet][:name])

       redirect "/cabinets/#{@user.cabinets.last.slug}"

    end

    get "/cabinets/:slug" do

        @cabinet = Cabinet.find_by_slug(params[:slug])
        
        erb :'/cabinets/show.html'
    
    end

    get "/cabinets/:slug/edit" do

        redirect "/login" if !logged_in?
        
        @cabinet = Cabinet.find_by_slug(params[:slug])
        
        erb :'/cabinets/edit.html'

    end

    patch "/cabinets/:slug" do

        @cabinet = Cabinet.find_by_slug(params[:slug])

        @cabinet.update(params[:cabinet])

        redirect "/cabinets/#{@cabinet.slug}"

    end

    delete "/cabinets/:slug" do

        @user = current_user

        @cabinet = @user.cabinets.find_by_slug(params[:slug])

        @cabinet.delete

        redirect "/cabinets"

    end


end

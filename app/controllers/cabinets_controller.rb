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

        session[:cabinet_slug] = params[:slug]
        
        erb :'/cabinets/show.html'
    

    end

    get "/cabinets/:slug/edit" do
        
        @cabinet = Cabinet.find_by_slug(params[:slug])
        erb :'/cabinets/edit.html'

    end

    patch "/cabinets/:slug" do

        @cabinet = Cabinet.find_by_slug(params[:slug])

        @cabinet.update(params[:cabinet])

        redirect "/cabinets/#{@cabinet.slug}"

    end


end

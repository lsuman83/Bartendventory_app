class LiquorsController < ApplicationController

  # GET: /liquors_controllers
  get "/liquors" do
    @cabinet = Cabinet.find_by_slug(session[:cabinet_slug])
    binding.pry
    erb :"/liquors/index.html"
  end

  # GET: /liquors_controllers/new
  get "/liquors/new" do
    @liquors = Liquor.all
    @cabinet = Cabinet.find_by_slug(session[:cabinet_slug])
    erb :"/liquors/new.html"
  end

  # POST: /liquors_controllers
  post "/liquors" do
  
    @cabinet = Cabinet.find_by_slug(session[:cabinet_slug])

    #binding.pry    
    if !params[:liquor][:name].empty?
      @cabinet.liquors << Liquor.create(params[:liquor])
    elsif !params[:cabinet][:liquor_ids].empty?
      params[:cabinet][:liquor_ids].each do |liquor_id|
        @cabinet.liquors << Liquor.find_by_id(liquor_id)
      end
    end


    redirect "/liquors"
  end

  # GET: /liquors_controllers/5
  get "/liquors/:slug" do
    @liquor = Liquor.find_by_slug(params[:slug])
    @cabinet = Cabinet.find_by_slug(session[:cabinet_slug])
    erb :"/liquors/show.html"
  end

  # GET: /liquors/5/edit
  get "/liquors/:id/edit" do
    erb :"/liquors/edit.html"
  end

  # PATCH: /liquors_controllers/5
  patch "/liquors/:id" do
    redirect "/liquors/:id"
  end

  # DELETE: /liquors_controllers/5/delete
  delete "/liquors/:id/delete" do
    redirect "/liquors"
  end
end

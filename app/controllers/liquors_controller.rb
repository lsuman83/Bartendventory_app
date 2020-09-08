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

    @cabinet.save



    redirect "/liquors"
  end

  # GET: /liquors_controllers/5
  get "/liquors/:slug" do
    binding.pry
    @liquor = Liquor.find_by_slug(params[:slug])
    @cabinet = Cabinet.find_by_slug(session[:cabinet_slug])
  
    erb :"/liquors/show.html"
  end

  # GET: /liquors/5/edit
  get "/liquors/:slug/edit" do
  
    @cabinet = Cabinet.find_by_slug(session[:cabinet_slug])
    @liquor = @cabinet.liquors.find_by_slug(params[:slug])
    binding.pry
    erb :"/liquors/edit.html"
  end

  # PATCH: /liquors_controllers/5
  patch "/liquors/:slug" do
    binding.pry
    @cabinet = Cabinet.find_by_slug(session[:cabinet_slug])
    @liquor = @cabinet.liquors.find_by_slug(params[:slug])
    @liquor.update(params[:liquor])

    redirect "/liquors/#{@liquor.slug}"
  end

  # DELETE: /liquors_controllers/5/delete
  delete "/liquors/:slug" do
    @cabinet = Cabinet.find_by_slug(session[:cabinet_slug])
    @cabinet.liquors.find_by_slug(params[:slug]).delete
  
    redirect "/liquors"
  end
end

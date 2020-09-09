class LiquorsController < ApplicationController

  
  get "/cabinets/:cabinet_slug/liquors" do
    @cabinet = Cabinet.find_by_slug(params[:cabinet_slug])
    binding.pry
    erb :"/liquors/index.html"
  end

  
  get "/cabinets/:cabinet_slug/liquors/new" do
    @liquors = Liquor.all
    @cabinet = Cabinet.find_by_slug(params[:cabinet_slug])
    binding.pry
    erb :"/liquors/new.html"
  end

  
  post "/cabinets/:cabinet_slug/liquors" do
  
    @cabinet = Cabinet.find_by_slug(session[:cabinet_slug])

    binding.pry    
    if !params[:liquor][:name].empty? 
      @cabinet.liquors << Liquor.create(params[:liquor])
    elsif !params[:cabinet][:liquor_ids].empty?
      params[:cabinet][:liquor_ids].each do |liquor_id|
        @cabinet.liquors << Liquor.find_by_id(liquor_id)
      end
    end

    @cabinet.save



    redirect "/cabinets/#{@cabinet.slug}/liquors"
  end

  
  get "/cabinets/:cabinet_slug/liquors/:slug" do
    binding.pry
    @liquor = Liquor.find_by_slug(params[:slug])
    @cabinet = Cabinet.find_by_slug(params[:cabinet_slug])
  
    erb :"/liquors/show.html"
  end

  # GET: /liquors/5/edit
  get "/cabinets/:cabinet_slug/liquors/:slug/edit" do
  
    @cabinet = Cabinet.find_by_slug(params[:cabinet_slug])
    @liquor = @cabinet.liquors.find_by_slug(params[:slug])
    binding.pry
    erb :"/liquors/edit.html"
  end

  # PATCH: /liquors_controllers/5
  patch "/cabinets/:cabinet_slug/liquors/:slug" do
    binding.pry
    @cabinet = Cabinet.find_by_slug(params[:cabinet_slug])
    @liquor = @cabinet.liquors.find_by_slug(params[:slug])
    @liquor.update(params[:liquor])

    redirect "/cabinets/#{@cabinet.slug}/liquors/#{@liquor.slug}"
  end

  # DELETE: /liquors_controllers/5/delete
  delete "/cabinets/:cabinet_slug/liquors/:slug" do
    @cabinet = Cabinet.find_by_slug(params[:cabinet_slug])
    @liquor = @cabinet.liquors.find_by_slug(params[:slug])
    @cabinet.remove(@liquor)
  
    redirect "/cabinets/#{@cabinet.slug}/liquors"
  end
end

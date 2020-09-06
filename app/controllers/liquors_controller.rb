class LiquorsController < ApplicationController

  # GET: /liquors_controllers
  get "/liquors" do
    @liquors = Liquor.all
    @user = current_user
    binding.pry
    erb :"/liquors/index.html"
  end

  # GET: /liquors_controllers/new
  get "/liquors/new" do
    @liquors = Liquor.all
    erb :"/liquors/new.html"
  end

  # POST: /liquors_controllers
  post "/liquors" do
    @user = current_user
    @liquors = Liquor.create(name: params[:liquor][:name], liquor_count: params[:liquor][:liquor_count], liquor_cost: params[:liquor][:liquor_cost])
    
    binding.pry
    redirect "/liquors/#{@liquors.slug}"
  end

  # GET: /liquors_controllers/5
  get "/liquors/:slug" do
    @liquor = Liquor.find_by_slug(params[:slug])
    binding.pry
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

class LiquorsController < ApplicationController

  # GET: /liquors_controllers
  get "/liquors" do
    erb :"/liquors/index.html"
  end

  # GET: /liquors_controllers/new
  get "/liquors/new" do
    erb :"/liquors/new.html"
  end

  # POST: /liquors_controllers
  post "/liquors" do
    redirect "/liquors"
  end

  # GET: /liquors_controllers/5
  get "/liquors/:id" do
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

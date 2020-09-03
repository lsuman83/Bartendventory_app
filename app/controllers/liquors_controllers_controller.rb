class LiquorsControllersController < ApplicationController

  # GET: /liquors_controllers
  get "/liquors_controllers" do
    erb :"/liquors_controllers/index.html"
  end

  # GET: /liquors_controllers/new
  get "/liquors_controllers/new" do
    erb :"/liquors_controllers/new.html"
  end

  # POST: /liquors_controllers
  post "/liquors_controllers" do
    redirect "/liquors_controllers"
  end

  # GET: /liquors_controllers/5
  get "/liquors_controllers/:id" do
    erb :"/liquors_controllers/show.html"
  end

  # GET: /liquors_controllers/5/edit
  get "/liquors_controllers/:id/edit" do
    erb :"/liquors_controllers/edit.html"
  end

  # PATCH: /liquors_controllers/5
  patch "/liquors_controllers/:id" do
    redirect "/liquors_controllers/:id"
  end

  # DELETE: /liquors_controllers/5/delete
  delete "/liquors_controllers/:id/delete" do
    redirect "/liquors_controllers"
  end
end

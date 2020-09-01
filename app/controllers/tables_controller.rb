class TablesController < ApplicationController

  # GET: /tables
  get "/tables" do
    erb :"/tables/index.html"
  end

  # GET: /tables/new
  get "/tables/new" do
    erb :"/tables/new.html"
  end

  # POST: /tables
  post "/tables" do
    redirect "/tables"
  end

  # GET: /tables/5
  get "/tables/:id" do
    erb :"/tables/show.html"
  end

  # GET: /tables/5/edit
  get "/tables/:id/edit" do
    erb :"/tables/edit.html"
  end

  # PATCH: /tables/5
  patch "/tables/:id" do
    redirect "/tables/:id"
  end

  # DELETE: /tables/5/delete
  delete "/tables/:id/delete" do
    redirect "/tables"
  end
end

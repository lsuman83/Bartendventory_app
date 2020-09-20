ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

set :database_file, "./database.yml"

Dotenv.load

require './app/controllers/application_controller'
require_relative '../app/models/concerns/slugifiable.rb'
require_all 'app'

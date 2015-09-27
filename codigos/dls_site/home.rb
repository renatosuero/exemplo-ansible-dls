require 'sinatra'

configure { set :server, :puma }

class DLS_App < Sinatra::Base
  set :root, File.dirname(__FILE__)
  set :views, 'views'
  get '/' do
    erb :home, :layout => :layout
  end
end

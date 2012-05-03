require 'sinatra'
require 'mongoid'
require 'haml'
require 'coffee-script'

set :views, [ File.dirname(__FILE__), 'views' ].join('/')

get '/' do
  haml :home
end

get '/scripts/lib/:script' do
  content_type 'text/javascript'

  coffee params[:script].to_sym
end
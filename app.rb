require 'sinatra'
require 'mongoid'
require 'haml'

set :views, [ File.dirname(__FILE__), 'views' ].join('/')

get '/' do
  haml :home
end
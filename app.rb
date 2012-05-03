require 'sinatra'
require 'haml'
require 'coffee-script'

set :views, [ File.dirname(__FILE__), 'views' ].join('/')

get '/' do
  haml :home
end

get '/scripts/lib/*.*' do |script, file_type|
  content_type 'text/javascript'

  coffee script.to_sym
end
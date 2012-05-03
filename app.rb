require 'sinatra'
require 'haml'
require 'coffee-script'

get '/' do
  haml :home
end

get '/scripts/lib/*.*' do |script, file_type|
  content_type 'text/javascript'

  coffee script.to_sym
end
require 'sinatra'

# For Nitrous.io
# You can also use -o, -p command line options without following settings.
# $ ruby app.rb -p 3000 -o 0.0.0.0
#configure :development do
#  set :bind, '0.0.0.0'
#  set :port, 3000
#end

# Firebase settings
require "firebase"
url = "https://igaiga-sample.firebaseio.com/"
firebase = Firebase::Client.new(url)
storage_name = "box1"

# Save
get '/name/:name' do
  firebase.set(storage_name, { name: params[:name]})
  "Visitor name: #{params[:name]}"
end

# Load
get '/visitor/' do
  firebase.get(storage_name).body.to_s
end

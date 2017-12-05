require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'
get'/' do
  [201, { "Content-Type" => "text/html" }, ["Hello!\nWorld!"]]
end

get '/secret' do
  "Ogres have layers!"
end

get '/random-cat' do
  @name_logic = ["Shrek", "John", "Sue", "Sellotape"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name_logic = params[:name]
  erb(:index)
end

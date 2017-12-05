require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'
get'/' do
  [201, { "Content-Type" => "text/html" }, ["Hello!\nWorld!"]]
end

get '/secret' do
  "Ogres have layers!"
end

get '/cat' do
  @name_logic = ["Shrek", "John", "Sue", "Sellotape"].sample
  erb(:index)
end

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
  @name = ["Shrek", "John", "Sue", "Sellotape"].sample
  erb(:index)
end

get '/cat-form' do
  erb(:catform)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

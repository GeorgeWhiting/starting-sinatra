require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'
get'/' do
  "Hello!"
end

get '/secret' do
  "Ogres have layers!"
end

get '/cocaine' do
  "Wanna buy some crack?"
end

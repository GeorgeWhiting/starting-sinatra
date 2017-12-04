require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'
get'/' do
  [201, { "Content-Type" => "text/html" }, ["Hello!\nWorld!"]]
end

get '/secret' do
  "Ogres have layers!"
end

get '/cocaine' do
  "Wanna buy some crack?"
end

get '/cat' do
  "<div>
  <img style='border: medium dashed red' src='http://bit.ly/1eze8aE' alt='Cat!'>
  </div>"
end

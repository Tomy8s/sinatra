require 'sinatra'

get '/' do
  'Hello world!'
end

get '/secret' do
  "Welcome to the secret page"
end

get '/cat' do
  erb(:index)
end

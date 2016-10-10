require 'sinatra'

get '/' do
  'Hello world!'
end

get '/secret' do
  "Welcome to the secret page"
end

get '/random-cat' do
  @name = ['John' ,'James', 'Jane' ,'Joanne'].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/naming-form' do
  erb(:form)
end
require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello!"
end

# get '/secret' do
#  "I have no idea what I am doing."
# end

# get '/super-secret' do
#   "secret message."
# end
# get '/cat' do
#     "<div style='border: 3px dashed red' >
#     <img src='http://placekitten.com/500/500'>
#    </div>"
# end    

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample 
    erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb :cat_form
end


# get '/named-cat' do
#     p params
#     @name = params[:name]
#       erb(:index)
#   end
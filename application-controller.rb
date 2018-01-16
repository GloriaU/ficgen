require 'bundler'
Bundler.require
require_relative './generator.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end


get '/input' do
  erb :input
end

get '/updates' do 
  erb :updates
end

# post '/getstory' do
#     info = params[:input]
#     @name = story(info)[:name]
#     @book = story(info)[:book]
#     @color = story(info)[:color]
#     @car = story(info)[:car]
#     erb :results
# end

post '/getstory' do
    @name = params[:name]
    @book = params[:book]
    @color = params[:color]
    @car = params[:car]
    erb :results
end

end
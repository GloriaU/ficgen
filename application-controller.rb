require 'bundler'
Bundler.require
require_relative '/generator.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end


get '/input' do
  erb :input
end

post '/getstory' do
    info = params[:input]
    @name = story(info)[:name]
    @book = story(info)[:book]
    @color = story(info)[:color]
    @car = story(info)[:car]
    erb :results
end

end
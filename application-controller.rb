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

get '/about' do 
  erb :about
end

get '/updates' do 
  erb :updates
end

get '/faq' do 
  erb :faq
end

# lets see if i can just post the story then have java or something replace all the inserts in the story like replacing "y/n" on UltraVioletSoul's post about Salen and the arranged marriage and all that jazz yknow

post '/getstory' do
    tem = params[:template]
    @title = story(tem)[:title]
    @name = params[:name]
    @book = params[:book]
    @color = params[:color]
    @car = params[:car]
    @part1 = story(tem)[:story][0]
    @part2 = story(tem)[:story][1]
    @part3 = story(tem)[:story][2]
    @part4 = story(tem)[:story][3]
    erb :results
end

end
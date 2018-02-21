require 'sinatra'
require_relative './database.rb'

get '/' do
   redirect to '/main' 
end

get '/main' do 
    db = DBHandler.new
    @all_food = db.all
    erb :application do
        erb :index
    end
end

get '/main/new' do
    erb :application do
        erb :new
    end
end


get '/main/:id' do 
    db = DBHandler.new
    @food_item = db.get(params[:id].to_i)
   erb :application do
       erb :show
    end
end

post '/main' do 
    db = DBHandler.new
    db.create(params[:food])
    redirect to '/main'
end


get '/main/:id/edit' do
    db = DBHandler.new
    @food_item = db.get(params[:id].to_i)
    erb :application do 
        erb :edit
    end
end

patch '/main/:id' do 
    db = DBHandler.new
    db.update(params[:id].to_i, params[:newfood])
end




    

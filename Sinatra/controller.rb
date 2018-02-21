require 'sinatra'
require_relative './database.rb'

get '/' do
   redirect to '/food' 
end

get '/food' do 
    db = DBHandler.new
    @all_food = db.all
    erb :application do
        erb :index
    end
end

get '/food/new' do
    erb :application do
        erb :new
    end
end

get '/food/:id/delete' do
    db = DBHandler.new
    @food_item=db.get(params[:id].to_i)
    @id = @food_item[0][0]
    erb :application do 
        erb :delete 
    end 
end

get '/food/:id/edit' do
    db = DBHandler.new
    @food_item = db.get(params[:id].to_i)
    erb :application do 
        erb :edit
    end
end

get '/food/:id' do 
    db = DBHandler.new
    @food_item = db.get(params[:id].to_i)
   erb :application do
       erb :show
    end
end

post '/food' do 
    db = DBHandler.new
    db.create(params[:newfood])
    redirect to '/food'
end

patch '/food/:id' do 
    db = DBHandler.new
    db.update(params[:id].to_i, params[:newfood])
end

delete '/food/:id' do
    db = DBHandler.new
    db.destroy(params[:id].to_i)
    redirect to '/food'
end
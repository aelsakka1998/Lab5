require 'sinatra'
req=%w(programming sql erp ruby)
users = Hash.new
get '/' do 
    @requirments = req
    erb :application do
        erb :index
        
        
    end

end

post '/Login.erb' do
    erb :application do
        erb :Login

    end 
   
end 

post '/submitlogin.erb' do
    erb :application do
        erb :submitlogin

    end 
end 

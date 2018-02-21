require 'sinatra'

get '/main' do 
    erb :application do
        erb :index
    end
end


get '/main/login' do 
    erb :application do
        erb :login
    end
end

get '/main/signup' do 
    erb :application do
        erb :signup
    end
end
get '/main/submitLogin' do 
    erb :application do
        erb :submitLogin
    end
end

post '/main/submitLogin' do 
    @email = params[:email]
    redirect '/main/submitLogin'
end
require 'sinatra'

#Index 
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

post '/main/user_details' do
    @Email =  params[:exampleInputEmail1]
    @Password =  params[:exampleInputPassword1]
    erb :application do
        erb :user_details
    end
end 


post '/main/cmu' do 
    erb :application do
        erb :cmu
    end
end 




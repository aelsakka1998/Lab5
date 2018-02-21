require 'sinatra'

before do 
    content_type :txt
    @defeat = {rock: :scissors , paper: :rock , scissors: :paper}
    @throws = @defeat.keys
end 



get '/throw/:type' do
    #play here
    player_throw = params[:type].to_sym
    
    if !@throws.include?(player_throw)
        halt 403, "you must throw one of the following #{@throws}"
    end 


computer_throw = @throws.sample

if player_throw == computer_throw
    "You tied with computer try again"
elsif computer_throw == @defeat[player_throw]
    "you won"
else
    "computer won"
end 
end

 
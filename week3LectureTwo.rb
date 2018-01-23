require 'sinatra'

#get '/' do  # values to be passed from web page to web app is held in params 
 # "<html><head></head><body><h1>Hello #{params[:name]}</h1></body></html>"
#end 

get '/' do 
      "<html><head></head><body>
      <form action = 'http://aelsakka-aelsakka.c9users.io:8080' method = 'POST' >
        First Name: <br/>
        <input type='text' name='firstname' value='Mickey'><br/><br/>
        <input type='text' name='lastname' value='Mouse'><br/><br/>
        <input type='submit' value='Submit'><br/><br/>
      </form>
      </body>
      <html>"
end 

post '/' do 
    "<html><head></head><body> Hello #{params[:firstname]} #{params[:lastname]} </body></html>"
end 

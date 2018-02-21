require 'sinatra'

#get '/' do  # values to be passed from web page to web app is held in params 
 # '<html><head></head><body><h1>Hello #{params[:name]}</h1></body></html>'
#end 


get '/' do 
    "<html><head><link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'></head><body>
<form class='form-horizontal' method='post' action='http://aelsakka-aelsakka.c9users.io/'>
<fieldset>

<!-- Form Name -->
<legend>Hello Form</legend>

<!-- Text input-->
<div class='form-group'>
  <label class='col-md-4 control-label' for='FirstName'>First Name </label>  
  <div class='col-md-4'>
  <input id='FirstName' name='FirstName' type='text' placeholder='Mickey' class='form-control input-md' required=''>
  <span class='help-block'>Enter the first name </span>  
  </div>
</div>

<!-- Text input-->
<div class='form-group'>
  <label class='col-md-4 control-label' for='textinput'>Last Name</label>  
  <div class='col-md-4'>
  <input id='LastName' name='LastName' type='text' placeholder='Mouse' class='form-control input-md'>
  <span class='help-block'>help</span>  
  </div>
</div>

<!-- Button -->
<div class='form-group'>
  <label class='col-md-4 control-label' for='submit'></label>
  <div class='col-md-4'>
    <button id='submit' name='submit' type='submit' class='btn btn-primary'>Submit</button>
  </div>
</div>

</fieldset>
</form>
</body>
</html>"
end 

post '/' do 
    "<html><head></head><body> Hello #{params[:FirstName]} #{params[:LastName]} </body></html>"
end 


## GIT allows you to store versions of ur code. 

## CSS framework bootstrap 



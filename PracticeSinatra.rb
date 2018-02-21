require 'sinatra'

get '/' do 
    "<html><head><link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'></head><body>
<form class='form-horizontal' method='post' action='http://aelsakka-aelsakka.c9users.io/'>
<fieldset>

<!-- Form Name -->
<legend>Form Name</legend>

<!-- Text input-->
<div class='form-group'>
  <label class='col-md-4 control-label' for='FirstName'>First Name</label>  
  <div class='col-md-4'>
  <input id='FirstName' name='FirstName' type='text' placeholder='FirstName' class='form-control input-md' required=''>
    
  </div>
</div>

<!-- Text input-->
<div class='form-group'>
  <label class='col-md-4 control-label' for='LastName'>Last Name</label>  
  <div class='col-md-4'>
  <input id='LastName' name='LastName' type='text' placeholder='LastName' class='form-control input-md' required=''>
    
  </div>
</div>

<!-- Text input-->
<div class='form-group'>
  <label class='col-md-4 control-label' for='Email'>Email</label>  
  <div class='col-md-4'>
  <input id='Email' name='Email' type='text' placeholder='Email' class='form-control input-md' required=''>
    
  </div>
</div>

<!-- Password input-->
<div class='form-group'>
  <label class='col-md-4 control-label' for='Password'>Password </label>
  <div class='col-md-4'>
    <input id='Password' name='Password' type='password' placeholder='Password' class='form-control input-md' required=''>
    
  </div>
</div>

<!-- Select Basic -->
<div class='form-group'>
  <label class='col-md-4 control-label' for='Gender'>Gender</label>
  <div class='col-md-4'>
    <select id='Gender' name='Gender' class='form-control'>
      <option value='Male'>Male</option>
      <option value='Female'>Female</option>
    </select>
  </div>
</div>

<!-- Button -->
<div class='form-group'>
  <label class='col-md-4 control-label' for='Submit'>Submit</label>
  <div class='col-md-4'>
    <button id='Submit' name='Submit' class='btn btn-primary'>Button</button>
  </div>
</div>

</fieldset>
</form>

</body>
</html>"
end











post '/' do 
    "<html><head></head><body> Hello #{params[:FirstName]} #{params[:LastName]} <br><br>
    Your details: <br><br>
    Email : #{params[:Email]} <br><br>
    Password: #{params[:Password]}<br><br>
    Gender:#{params[:Gender]}

	</body></html>"
end 
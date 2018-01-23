require 'sinatra'

get '/' do
    "<html>

	<head>
	<title> </title>
	</head>

	<body>
		<h1>Welcome to my website</h1>
		<h1>About me</h1>
		<p> I have chosen IS because I believe that the knowlege and experience I will gain in CMUQ as an IS student, will help me 
		solve real world problems. Im interested in the web development part and I believe studing IS in CMU, will increase my knowlledge
		in this part and allow me to get exposed to different and other parts of IS. All the knowledge I will learn now, will allow 
		me to work in the best places in the future. </p>
		
		<ol>
		<h5>Hobbies:</h5>
		<li>Swimming</li>
		<li>Table Tennis</li>
		<li>BasketBall</li>
		</ol>

		<ul>
		<h5>Food:</h5>
		<li>Pizza</li>
		<li>Pasta</li>
		<li>Seafood</li>
		</ul>


		<h5>My schedule:</h5>
		<table>
		  <tr>
		  <th>Time</th>
		    <th>Sunday</th>
		    <th>Monday</th> 
		    <th>Tuesday</th>
		    <th>Wednesday</th>
		    <th>Thursday</th> 
		 
		  </tr>
		  

		  <tr> 
			<td>9.30-10.20 </td>
		    <td>Ruby On Rails</td>
		    <td></td> 
		    <td>Ruby On Rails</td>
		    <td></td> 
		    <td>Ruby On Rails</td>
		  </tr>

		    <tr>
		    <td>10.30-11.20 </td>
		    <td>Global History</td>
		    <td>Milieux</td> 
		    <td>Global History</td>
		    <td>Milieux</td> 
		    <td>Global History</td>
		  </tr>


		     <tr>
		    <td></td>
		    <td></td> 
		    <td></td>
		    <td></td> 
		    <td></td>
		  </tr>


		     <tr>
		    <td></td>
		    <td></td> 
		    <td></td>
		    <td></td> 
		    <td></td>
		  </tr>


		     <tr>
		    <td></td>
		    <td></td> 
		    <td></td>
		    <td></td> 
		    <td></td>
		  </tr>


		     <tr>
		    <td></td>
		    <td></td> 
		    <td></td>
		    <td></td> 
		    <td></td>
		  </tr>


		     <tr>
		    <td></td>
		    <td></td> 
		    <td></td>
		    <td></td> 
		    <td></td>
		  </tr>

		       <tr>
		    <td></td>
		    <td></td> 
		    <td></td>
		    <td></td> 
		    <td></td>
		  </tr>


		       <tr>
		    <td></td>
		    <td></td> 
		    <td></td>
		    <td></td> 
		    <td></td>
		  </tr>


		       <tr>
		    <td></td>
		    <td></td> 
		    <td></td>
		    <td></td> 
		    <td></td>
		  </tr>


		     <tr>
		     <td>1.30-3.00</td>
		    <td></td> 
		    <td>Statistics</td>
		    <td></td> 
		    <td>Statistics</td>
		  </tr>
   			

   			<tr>
   			 <td>3.00-4.20</td>
		    <td>Writing</td>
		    <td></td> 
		    <td>Writing</td>
		    <td></td> 
		    <td></td>
		  </tr>
		</table>
        <form  method='POST'>
        <p><label>Enter your name</label> <input type='text' name='post[:name]' /></p>
        <p><label>Enter your email</label> <input type='text' name='post[:email]' /></p>
        <p><button type = 'submit' name='Submit'>submit</button></p>
         
        </form>

	</body>

</html>"



end 


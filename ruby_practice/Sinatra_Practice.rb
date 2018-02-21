require 'sinatra'


get %r{/(sp|gr)eedy} do 
    pass if request.path =~ /\/speedy/
    "you got caught in greedy"
end 

get '/speedy' do 
    "no one called me :("
end 


get '/greedy' do 
    "no one called me either"
end 



get '/' do 
    "Triggered via get"
end 





#This stops the output 
get '/halt' do 
    'You will not see the output'
    halt 500
end 



get '/redirect' do 
    redirect 'http"//www.google.com'
end 

get '/redirect2' do 
    redirect 'http"//www.google.com' , 301 
end 


configure do 
    enable :sessions
end 

before do 
    content_type :txt
end 


get '/set' do 
    session[:foo] =Time.now
    "Session value set"
end 

get '/fetch' do 
    "Session value: #{session[:foo]}"
end 


get '/attachement' do 
    attachement 'hello.txt'
    "here is what will be sent"
end 

get '/main' do 
     "hello \n and"
end 


a = %w(ant 2 3)
puts a 

begin 
1/0 
raise RuntimeError
rescue 
STDERR.puts "error"
ensure 
puts "hello"
end 



#CLASSES AND INHERITANCE 

class Person 
    @@number_of_people =0
    attr_accessor :fname , :lname 
    
    def initialize(fname , lname)
        @fname = fname
        @lname = lname
        @@number_of_people +=1
    end 
    
    def self.number_of_people
        return @@number_of_people
    end 
    
end 

class Student < Person 
    attr_accessor :gpa 
    def initialize(fname , lname , gpa)
        @fname = fname 
        @lname = lname 
        @gpa = gpa 
    end 
    
end 


A = Student.new("aya", "Elsakka" , 3.76)
puts A.fname



['/one', '/two' , '/three'].each do |route|
    get route do 
        "Triggered #{route} via Get"
    end 
    
    post route do 
        "Triggered #{route} via Post"
    end 
end 
    
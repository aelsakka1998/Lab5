require 'sqlite3'

class DBHandler
    #constructor
    def initialize()
        begin
        db = SQLite3::Database.open "food..db"
        dbstatement = "CREATE TABLE IF NOT EXISTS Foods(ID INTEGER PRIMARY KEY, Name TEXT)"
        db.execute dbstatement
        rescue SQLite3::Exception => e
        puts "Exception occured"
        puts e

        ensure
        db.close if db
        
        end
    end


def create(val)
            begin
        db = SQLite3::Database.open "food..db"
        dbstatement = "INSERT INTO Foods(Name) VALUES ('#{val}')"  # entire strinf doubel quotes
        db.execute dbstatement
        rescue SQLite3::Exception => e
        puts "Exception occured"
        puts e

        ensure
        db.close if db
        
end
    
end


def all
          begin
        db = SQLite3::Database.open "food..db"
        dbstatement = "SELECT * FROM Foods"
        db.execute dbstatement
        rescue SQLite3::Exception => e
        puts "Exception occured"
        puts e

        ensure
        db.close if db
        
end  
end

def get(val)    
            begin
        db = SQLite3::Database.open "food..db"
        dbstatement = "SELECT * FROM Foods WHERE ID='#{val}'"
        db.execute dbstatement
        rescue SQLite3::Exception => e
        puts "Exception occured"
        puts e

        ensure
        db.close if db
        
end
end    

def update(id, name)
        begin
        db = SQLite3::Database.open "food..db"
        dbstatement = "UPDATE Foods SET Name='#{name}' WHERE ID='#{id}'"
        db.execute dbstatement
        rescue SQLite3::Exception => e
        puts "Exception occured"
        puts e

        ensure
        db.close if db
        
end
end

def destroy(id)
      begin
        db = SQLite3::Database.open "food..db"
        dbstatement = "DELETE FROM Foods WHERE ID='#{id}'"
        db.execute dbstatement
        rescue SQLite3::Exception => e
        puts "Exception occured"
        puts e

        ensure
        db.close if db
        
end
end
end
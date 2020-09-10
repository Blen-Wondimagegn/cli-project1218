class Cli

  #list_rock_type
  #menu 
      #ask user to choose type of rock from number list 
      #ask user to choose if they would like example (y/n) if yes display if no exit 
 #list_rock_example 

    def call
        puts "Welcome to Geology database for rocks!"
        puts"Please choose your rock type"
        Scraper.get_rock_type
        list_rocks 
        puts "Here is a brief decription about the rock you chose"
        list_rocks_decription 
        puts"Here is some example"
        list_rocks_example
        puts"Here is definition"
        list_rock_definition
        
    end 
    
    def list_rocks 
        Rock.all.each.with_index(1) do | rock, i |
            puts "#{i}. #{rock.rock_name}"
        end
    end


        def list_rocks_decription  
        Rock.all.each.with_index(1) do | rock, i |
            puts "#{i}. #{rock.rock_decription}"
        end
    end

   def list_rocks_example
        Rock.all.each.with_index(1) do | rock, i |
            puts "#{i}. #{rock.rock_example}"
        end
     end

    def list_rock_definition
        Rock.all.each.with_index(1) do | rock, i |
            puts "#{i}. #{rock.rock_definition}"
        end
     end
end 







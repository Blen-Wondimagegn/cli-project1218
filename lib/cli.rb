class Cli

  #list_rock_type
  #menu 
      #ask user to choose type of rock from number list 
      #ask user to choose if they would like example (y/n) if yes display if no exit 
 #list_rock_example 

    def call
        puts "**************************************"
        puts "Welcome to Geology Database For Rocks!"
        puts "**************************************"
        puts ""  
        Scraper.get_rock_type
        list_rock_type 
        display_rock_decription   
        puts "Please pick a number for a rock type"
        menu 
        # puts "Here is a brief decription about the rock you chose"
        
    #     # puts"Here is some example"
    #    display_rocks_example
    #     # puts"Here is definition"
    #     display_rocks_property 
        
    end 
    
    def list_rock_type
        Rock.all.each.with_index(1) do | rock, i |
            puts "#{i}. #{rock.rock_name}"
        end
    end
 

    def display_rock_decription 
            Rock.all.each do | rock|
                puts "#{rock.rock_decription}"
            end
        end

   def display_rock_example
        Rock.all.each.with_index(1) do | rock, i |
            puts "#{i}. #{rock.rock_example}"
        end
     end

    def display_rock_property 
        Rock.all.each.with_index(1) do | rock, i |
            puts "#{i}. #{rock.rock_property}"
        end
     end

    def menu
        input = 0
        until ![1,2,3].include? input do 
         puts "Please enter a number 1 or a 3.>" 
         puts "1."
        input = gets.chomp.to_i
        end
        if input == 1    
            puts ""
        elsif input == 2  
            puts "Second response."
        elsif input == 3 
            puts "thrid"
        else
            puts"error"
        end         
 end 
end 







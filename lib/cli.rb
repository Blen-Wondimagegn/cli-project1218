class Cli

  #list_rock_type
  #list_rock_example 
  #list_rock_example 
  #list_rock_example 
  #menu 
      #ask user to choose type of rock from number list 
      #ask user to choose if they would like example (y/n) if yes display if no exit 


    def call
        puts "**************************************"
        puts "Welcome to Geology Database For Rocks!"
        puts "**************************************"
        puts ""  
        puts "Please pick a rock type for more details :"
        Scraper.get_rock_type
        # list_rock_type 
        
        
        menu 
    end 
    
    def list_rock_type
        Rock.all.each.with_index(1) do | rock, i |
            puts "#{i}. #{rock.rock_name} : #{rock.rock_decription}"
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
     input = nil 
     puts "Would you like to see more detalis (y/n):"
     user_input = gets.strip.downcase
     if user_input == "y"
        input = 0
        while input != "exit"  
        input = gets.chomp_to_i
        #    puts "Invalid input, Please pick a number for a rock propertiy"
        list_rock_type 
        menu 
            case input 
            when 1 
            puts "1"
            when 2
            puts "2"
            when 3 
            puts "3"
            else
            "error"
            end
        end  
    else user_input == "n"
        puts"exiting"  
    end 


 end 
end 







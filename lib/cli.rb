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
    
        Scraper.get_rock_type
        # display_rock_decription
        # display_rock_example
        # display_rock_property
          menu 
   end 
   def list_rock_type
        Rock.all.each.with_index(1) do | rock, i |
         puts "#{i}:) #{rock.rock_name}"
        end
        puts "Enter 0 to exit" 
   end
   def display_rock_decription
        Rock.all.each.with_index(1) do | rock, i |
            puts "#{i}:) #{rock.rock_decription}"
        end
   end

   def display_rock_example
        Rock.all.each.with_index(1) do | rock, i |
            puts "#{i}:) #{rock.rock_example}"
        end
   end    
   def display_rock_property
        Rock.all.each.with_index(1) do | rock, i |
            puts "#{i}:) #{rock.rock_property}"
        end
   end
   def menu
      loop do 
         puts "Please pick a rock type for more details :"
         list_rock_type
         input = gets.chomp
         if input.to_i.between?(1, Rock.all.count)
             selected_rock = Rock.all[input.to_i-1]  
           puts "You have chosen #{selected_rock.rock_name}"
            puts "What information would you like to find out:" 
            puts "Enter 1 for breif description"
            puts "Enter 2 for examples"
            puts "Enter 3 for properties"  
                input = gets.chomp.to_i 
                if input == 1 
                # rock = Rock.all[input.to_i-1]
                puts "Here is some description about the rock you picked:"
                
                selected_rock.rock_decription
                 display_rock_decription
                elsif input == 2
                # rock = Rock.all[input.to_i-1]
                puts "Here is some examples for the rock you picked:"
                puts selected_rock.rock_example
                elsif input == 3
                # rock = Rock.all[input.to_i-1]
                puts "Here is some uniq property about the rock you picked:"
                # display_rock_property
                puts selected_rock.rock_property
                # else
                #     exit 
                end  
            elsif !input.to_i.between?(0, Rock.all.count)   
            puts "Rock type not found, Please try again"
     
      end
     break if input.to_i == 0
    end  
   end  
end 







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
        list_rock_type 
        display_rock_property
        menu 
    end 
    def list_rock_type
        Rock.all.each.with_index(1) do | rock, i |
            puts "#{i}. #{rock.rock_name}"
        end
    end

    def display_rock_decription
        Rock.all.each.with_index(1) do | rock, i |
            puts "#{i}. #{rock.rock_decription}"
        end
     end

   def display_rock_example
        Rock.all.each.with_index(1) do | rock, i |
            puts "#{i}. #{rock.rock_example}"
        end
     end
  
     def display_rock_property
        Rock.all.each do | rock, i |
            puts "#{i}. #{rock.rock_property}"
        end
     end

    

    


    def menu

        input = gets.chomp
        if input.to_i.between?(1, Rock.all.count)
            puts "What information would you like to find out:" 
            puts "Enter 1 for breif description"
            puts "Enter 2 for examples"
            puts "Enter 3 for properties"
            
            input = gets.to_i 
            if input == 1 
            rock = Rock.all[input.to_i-1]
            display_rock_decription
            elsif input == 2
            rock = Rock.all[input.to_i-1]
            display_rock_example
            else input == 3
            # rock = Rock.all[input.to_i-1]
            # display_rock_property
            end 
            
        else !input.to_i.between?(1, Rock.all.count) 
            puts "Rock type not found, Please pick a rock type for more details" 
            list_rock_type
            menu 
           
      end 
   end  
end 







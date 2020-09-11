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
        Rock.all.each.with_index(1) do | rock, i |
            puts "#{i}. #{rock.rock_property}"
        end
     end


    def menu
     
    
    while !input.to_i.between?(1, Rock.all.count) do 
       input = gets.chomp
         if input == 1
           puts "Would you like to see more detalis (y/n):"
            #     input = gets.strip.downcase
            #     until (input == "n") do
            #         puts "h,mmmm" 
            #  end 
            end 
      end 
   end  
end 







class Cli

  #list_rock_type
  #menu 
      #ask user to choose type of rock from number list 
      #ask user to choose if they would like example (y/n) if yes display if no exit 
 #list_rock_example 

    def call
        puts "**************************************"
        puts "Welcome to Geology database for rocks!"
        puts "**************************************"
        puts ""
        puts"Please select a number to get rock type"
        Scraper.get_rock_type
        # Scraper.get_details
        list_rocks_type 
        # puts "Here is a brief decription about the rock you chose"
    #     display_rocks_decription  
    #     # puts"Here is some example"
    #    display_rocks_example
    #     # puts"Here is definition"
    #     display_rocks_property 
        
    end 
    
    def list_rocks_type
        Rock.all.each.with_index(1) do | rock, i |
            puts "#{i}. #{rock.rock_name}"
        end
    end


   def display_rocks_example
        Rock.all.each.with_index(1) do | rock, i |
            puts "#{i}. #{rock.rock_example}"
        end
     end

    def display_rocks_property 
        Rock.all.each.with_index(1) do | rock, i |
            puts "#{i}. #{rock.rock_property}"
        end
     end

    def menu

        # puts "Please select a number to get the details."
        # input = gets.chomp
        #  if !input.to_i.between?(1, Rock.all.count)
        #     puts "Character not found. Please select a different character!"
        #    list_rock_type
        #     menu
        # else
        #     rock= Rock.all[input.to_i-1]
        #     display_character_details(rock)
        # end

  while user_input = gets.chomp # loop while getting user input
  case user_input
  when "1"
    puts "First response"
    break # make sure to break so you don't ask again
  when "2"
    puts "Second response"
    break # and again
  else
    puts "Please select either 1 or 2"
    print prompt # print the prompt, so the user knows to re-enter input
  end
end
    end 
end 







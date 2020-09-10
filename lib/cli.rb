class Cli

  #list_rock_type
  #menu 
      #ask user to choose type of rock from number list 
      #ask user to choose if they would like example (y/n) if yes display if no exit 
 #list_rock_example 

    def call
        puts "Welcome to Geology database for rocks!"
        puts"Please select a number between 1-3 to get rock type"
        Scraper.get_rock_type
        list_rocks_type 
        # puts "Here is a brief decription about the rock you chose"
        # list_rocks_decription 
        # puts"Here is some example"
        # list_rocks_example
        # puts"Here is definition"
        # list_rocks_property 
        
    end 
    
    def list_rocks_type
        Rock.all.each.with_index(1) do | rock, i |
            puts "#{i}. #{rock.rock_name}"
        end
    end


        def display_rocks_decription  
        Rock.all.each.with_index(1) do | rock, i |
            puts "#{i}. #{rock.rock_decription}"
        end
    end

   def display_rocks_example
        Rock.all.each.with_index(1) do | rock, i |
            puts "#{i}. #{rock.rock_example}"
        end
     end

    def display_rocks_property 
        Rock.all.each.with_index(1) do | rock, i |
            puts "#{i}. #{rock.rock_property }"
        end
     end

    def menu
        puts "Please select a number between 1-3 to get the details."
        input = gets.chomp 
        
        if !input.to_i.between?(1, Rock.all.count)
                puts "Please select a valid number!"
                list_rock_type
                menu
        else
            rock = Rock.all[input.to_i-1]
            list_rocks_decription(rock)
            # list_rocks_example
            # list_rocks_property
            end 
        end 
end 







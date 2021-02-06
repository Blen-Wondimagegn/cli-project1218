class Cli
   def call
        puts "**************************************"
        puts "Welcome to Geology Database For Rocks!"
        puts "**************************************"
        puts ""  
        Scraper.get_rock_type
        menu 
   end 
   def list_rock_type
        Rock.all.each.with_index(1) do | rock, i |
         puts "#{i}:) #{rock.rock_name}"
        end
   end
   
     def menu
    loop do 
         puts "Please pick a rock type for more details, Enter 0 to exit:"
         puts "**********************************************************"
         list_rock_type
         input = gets.chomp
         if input.to_i.between?(1, Rock.all.count)
                selected_rock = Rock.all[input.to_i-1]  
                puts "You have chosen => #{selected_rock.rock_name}"
                puts "******************************************"
                puts "What information would you like to find out?"
                puts "*******************************************" 
                puts "Enter 1 for breif description"
                puts "Enter 2 for examples"
                puts "Enter 3 for properties"  
                input = gets.chomp.to_i 
                if input == 1 
                    puts "Here is some description about #{selected_rock.rock_name}:"
                    puts "***************************************************"
                    puts selected_rock.rock_decription
                elsif input == 2
                    puts "Here is some examples for #{selected_rock.rock_name}:"
                    puts "*********************************************"
                    puts selected_rock.rock_example
                elsif input == 3
                    puts "Here is some uniq properties about #{selected_rock.rock_name}:"
                    puts "**************************************************"
                    puts selected_rock.rock_property
                end  
            elsif !input.to_i.between?(0, Rock.all.count)
            puts "Rock type not found, Please try again" 
           end
            break if input.to_i == 0
    end  
   end  
end 








# def menu

#         puts "Please pick a rock type for more details, Enter 'exit' to exit,"
#         puts "**********************************************************"
#         list_rock_type
#         input = gets.chomp
#         while input !="exit" 
#          if input.to_i.between?(1, Rock.all.count)
#                 selected_rock = Rock.all[input.to_i-1]  
#                 puts "You have chosen => #{selected_rock.rock_name}"
#                 puts "******************************************"
#                 puts "What information would you like to find out?"
#                 puts "*******************************************" 
#                 puts "Enter 1 for breif description"
#                 puts "Enter 2 for examples"
#                 puts "Enter 3 for properties" 
#                 input = gets.chomp.to_i 
#                 if input == 1 
#                     puts "Here is some description about #{selected_rock.rock_name}:"
#                     puts "***************************************************"
#                     puts selected_rock.rock_decription
#                 elsif input == 2
#                     puts "Here is some examples for #{selected_rock.rock_name}:"
#                     puts "*********************************************"
#                     puts selected_rock.rock_example
#                 elsif input == 3
#                     puts "Here is some uniq properties about #{selected_rock.rock_name}:"
#                     puts "**************************************************"
#                     puts selected_rock.rock_property
#                  end 
#           elsif !input.to_i.between?(1, Rock.all.count) 
#                   puts "Invalid input, Please try again"  
#              end  
#                 puts "Please pick a rock type for more details, Enter 'exit' to exit,"
#                 puts "**********************************************************"
#                 list_rock_type
#                 input = gets.chomp
#          end 
#             puts "Goodbye!"
#    end  
# end 



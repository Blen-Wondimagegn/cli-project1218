class Scraper


# def call 
 # html = open(ROCK_URL)
    # doc = Nokogiri::HTML(ROCK_URL)
    # doc.css("span.amnh-tile__content").each do |rock|
         
    #    rock_name = rock.css("span.amnh-tile__title").text.strip
    #    puts "#{rock_name}"
    #    rock_decription = rock.css("span.amnh-tile__description").text.strip
    #    puts "#{rock_decription}"

   #  site = "https://www.amnh.org/exhibitions/permanent/planet-earth/how-do-we-read-the-rocks/three-types/metamorphic"

  # site = "https://www.amnh.org/exhibitions/permanent/planet-earth/how-do-we-read-the-rocks/three-types/sedimentary"

  #site = "https://www.amnh.org/exhibitions/permanent/planet-earth/how-do-we-read-the-rocks/three-types/igneous"
    
    # page =  Nokogiri::HTML(open(site))
    # results = page.css("h2.pt-2")
  
#     URL= "https://www.amnh.org/exhibitions/permanent/planet-earth/how-do-we-read-the-rocks/three-types"
#     page =  Nokogiri::HTML(open(URL))
#     results = page.css("span.amnh-tile__content")
#     puts results.count
#     results.each do |r|
#     puts r.css("span.amnh-tile__title").text.strip
#     puts r.css("span.amnh-tile__description").text.strip
#     end
#   end 

ROCK_URL= "https://www.amnh.org/exhibitions/permanent/planet-earth/how-do-we-read-the-rocks/three-types"

#get_rock_type
def self.get_rock_type

    page =  Nokogiri::HTML(open(ROCK_URL))
    results = page.css("span.amnh-tile__content")
    # puts results
    # puts results.count
    results.each do |rock|
    rock_name = rock.css("span.amnh-tile__title").text.strip
    rock_decription = rock.css("span.amnh-tile__description").text.strip
    r_url ="https://www.amnh.org/exhibitions/permanent/planet-earth/how-do-we-read-the-rocks/three-types/"+ rock_name.split(' ')[0] 
    r_page =  Nokogiri::HTML(open(r_url))
    rock_example = r_page.css("h2.pt-2").text.strip
    rock_property  = r_page.css(".amnh-content p").text.strip 
    
    Rock.new(rock_name,rock_decription,rock_example,rock_property )
      end
    end  
  
    
  

end 
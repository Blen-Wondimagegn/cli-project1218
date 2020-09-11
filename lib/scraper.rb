class Scraper


ROCK_URL= "https://www.amnh.org/exhibitions/permanent/planet-earth/how-do-we-read-the-rocks/three-types"

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
    rock_property = r_page.css(".amnh-content p").text.strip
    
    Rock.new(rock_name,rock_decription,rock_example,rock_property)
      end
    end  
  
    
  

end 
class Cli
    def hello
    site = "https://www.amnh.org/exhibitions/permanent/planet-earth/how-do-we-read-the-rocks/three-types"
    page =  Nokogiri::HTML(open(site))
    results = page.css("span.amnh-tile__content")
    puts results.count
    results.each do |r|
    puts r.css("span.amnh-tile__description").text.strip
    end
  end 
end 


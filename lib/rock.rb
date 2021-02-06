class Rock
    @@all = []
    attr_reader :rock_name, :rock_decription, :rock_example, :rock_property 
    def initialize(rock_name,rock_decription,rock_example,rock_property)
        @rock_name = rock_name
        @rock_decription = rock_decription 
        @rock_example = rock_example
        @rock_property = rock_property 
        @@all << self
    end
    def self.all
        @@all
    end 
end 


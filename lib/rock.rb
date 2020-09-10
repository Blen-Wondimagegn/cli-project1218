class Rock
  @@all = []

    attr_accessor :rock_name, :rock_decription, :rock_example, :rock_definition

    def initialize(rock_name,rock_decription,rock_example,rock_definition)
        @rock_name = rock_name
        @rock_decription = rock_decription 
        @rock_example = rock_example
        @rock_definition = rock_definition
        @@all << self
    end

    def self.all
        @@all
    end 
end 
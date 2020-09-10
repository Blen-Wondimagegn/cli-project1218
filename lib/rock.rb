class Rock
  @@all = []

    attr_accessor :rock_name, :rock_decription, :rock_example

    def initialize(rock_name,rock_decription,rock_example)
        @rock_name = rock_name
        @rock_decription = rock_decription 
        @rock_example = rock_example
        @@all << self
    end

    def self.all
        @@all
    end 
end 
class Animal

    attr_accessor :species, :weight, :nickname, :zoo

    @@all = []

    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        zoo.animals << self
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(species)
        self.all.select{|animal| animal.species == species }
    end
end

class Animal
    attr_accessor :weight, :zoo
    attr_reader :name, :species

    @@all = []

    def initialize(name, weight, species)
        @name = name
        @weight = weight
        @species = species
        Animal.all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(spiece)
        Animal.all.select {|animal| animal.species == spiece}
    end


end

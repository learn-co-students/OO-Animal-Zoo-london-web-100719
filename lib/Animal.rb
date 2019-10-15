class Animal

    @@all=[]

    attr_accessor :weight, :zoo
    attr_reader :species, :nickname

    def self.all
        @@all
    end

    def self.find_by_species(species)
        Animal.all.select{|animal| animal.species==species}
    end

    def initialize(species,weight,nickname,zoo)
        @species=species
        @nickname=nickname
        @weight=weight
        @zoo=zoo

        @@all << self
        zoo.animals << self
    end



end

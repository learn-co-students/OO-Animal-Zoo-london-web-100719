class Zoo

    @@all=[]
    @animals=[]

    attr_reader :name, :location, :animals

    def self.all
        @@all
    end

    def self.find_by_location(location)
        self.all.select{|zoo| zoo.location==location}
    end

    def initialize(name, location)
        @name=name
        @location=location
        @@all << self
    end

    def animal_species
       animals.map {|animla| animal.species }.uniq
    end

end

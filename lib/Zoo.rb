# frozen_string_literal: true

class Zoo
  attr_reader :name, :location

  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def animals
    Animal.all.select { |animal| animal.zoo == self }
  end

  def animal_species
    Animal.all.map(&:species).uniq
  end

  def find_by_species(species)
    animals.find { |animal| animal.species == species }
  end

  def animal_nicknames
    animals.map(&:nickname)
  end

  def self.find_by_location(location)
    all.select { |zoo| zoo.location == location }
  end
end

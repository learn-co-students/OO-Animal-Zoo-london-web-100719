# frozen_string_literal: true

class Animal
  attr_reader :species, :nickname
  attr_accessor :weight

  @@all = []

  def initialize(species, nickname, weight)
    @species = species
    @nickname = nickname
    @weight = weight
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_species(species)
    all.find { |animal| animal.species == species }
  end
end

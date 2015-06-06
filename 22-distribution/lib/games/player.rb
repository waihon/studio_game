#####
# Pragmatic Studio Ruby Programming
# 22 - Distribution
# This version has changes:
# 1. Embed Player class within Games module.
# 2. In test code, prefix class name with Games::.
#####

require_relative 'playable'

module Games
  class Player
    include Playable

    attr_accessor :name
    attr_reader :health

    def initialize(name, health=100)
      @name = name.capitalize
      @health = health
      ## Define a new hash with the default value of 0 for non-existent keys.
      @found_treasures = Hash.new(0)
    end

    def to_s
      "I'm #{@name} with health = #{@health}, points = #{points}, and score = #{score}."
    end


    def score
      @health + points
    end

    def points
      @found_treasures.values.reduce(0, :+)
    end

    def found_treasure(treasure)
      @found_treasures[treasure.name] += treasure.points
      puts "#{@name} found a #{treasure.name} worth #{treasure.points} points."
      puts "#{@name}'s treasures: #{@found_treasures}"
    end

    def each_found_treasure
      @found_treasures.each do |name, points|
        next_treasure = Treasure.new(name, points)
        yield next_treasure
      end
    end

    def <=>(other)
      # Descending order
      other.score <=> score
    end

    def self.from_csv(string)
      name, health = string.split(",")
      new(name, Integer(health))
    end
  end
end

if __FILE__ == $0
  player = Games::Player.new("moe")
  puts player.name
  puts player.health
  player.w00t
  puts player.health
  player.blam
  puts player.health
end
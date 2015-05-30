#####
# Pragmatic Studio Ruby Programming
# 18 - Iterators
# This version has changes:
# 1. Add a new method named each_found_treasure.
#####
class Player
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

  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end

  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end

  def skip
    # No changes in health; just output a message
    puts "#{@name} was skipped."
  end

  def score
    @health + points
  end

  def points
    @found_treasures.values.reduce(0, :+)
  end

  def strong?
    @health > 100
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
end

if __FILE__ == $0
  player = Player.new("moe")
  puts player.name
  puts player.health
  player.w00t
  puts player.health
  player.blam
  puts player.health
end
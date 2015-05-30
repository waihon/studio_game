#####
# Pragmatic Studio Ruby Programming
# 17 - Hashes
# This version has changes:
# 1. Add a new instance variable of type Hash named found_treasures.
# 2. Update  score as the sum of its health and points.
# 3. Add a new method named points.
# 4. Add a new mthod named found_treasure(treasure).
# 5. Update to_s to include points.
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
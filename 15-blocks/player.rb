#####
# Pragmatic Studio Ruby Programming
# 15 - Blocks
# This version has the following version:
# 1. Add a new method "skip"
# 2. Override <=> method to sort players by score in descending order.
#####
class Player
  attr_accessor :name
  attr_reader :health

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
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
    @health + @name.length
  end

  def strong?
    @health > 100
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
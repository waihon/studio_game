#####
# Pragmatic Studio Ruby Programming
# 09 - Arrays
#####
class Player
  attr_accessor :name
  attr_accessor :health

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

  def score
    @health + @name.length
  end
end

if __FILE__ == $0
  player1 = Player.new("moe")
  player2 = Player.new("larry", 60)
  player3 = Player.new("curly", 125)

  players = [player1, player2, player3]

  puts "There are #{players.size} players in the game:"
  players.each do |player|
    puts player
  end

  players.each do |player|
    puts player.health
  end

  players.each do |player|
    player.blam
    player.w00t
    player.w00t
    puts player
  end

  ## pop removes the last element (or nil if the array is empty) and return it.
  players.pop
  p players

  player4 = Player.new("shemp", 90)
  ## push appends the given object(s) to the end of the array. The array 
  ## itself will be returned so several appends may be changed together.
  players.push(player4)
  puts players
end
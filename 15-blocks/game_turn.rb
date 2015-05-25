#####
# Pragmatic Studio Ruby Programming
# 15 - Blocks
# This version has the following changes:
# 1. Use the new "skip" method of Player
#####
require_relative 'die'
require_relative 'player'

module GameTurn
  def self.take_turn(player)
    die = Die.new
    case die.roll
    when 1..2
      player.blam
      puts "#{player.name} got blammed!"
    when 3..4
      player.skip
      puts "#{player.name} was skipped."
    else
      player.w00t
      puts "#{player.name} got w00ted!"
    end
  end
end

if __FILE__ == $0
  player = Player.new("curly", 125)
  GameTurn.take_turn(player)
end

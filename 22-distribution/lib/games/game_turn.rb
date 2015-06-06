#####
# Pragmatic Studio Ruby Programming
# 22 - Distribution
# This version has changes:
# 1. Embed GameTurn class within Games module.
# 2. In test code, prefix class name with Games::.
#####
require_relative 'die'
require_relative 'player'
require_relative 'treasure_trove'
require_relative 'loaded_die'

module Games
  module GameTurn
    def self.take_turn(player)
      # In each turn, a player:
      # Is wooted, skipped, or blammed
      # Found a random treasure
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

      treasure = TreasureTrove.random
      player.found_treasure(treasure)    
    end
  end
end

if __FILE__ == $0
  player = Games::Player.new("curly", 125)
  Games::GameTurn.take_turn(player)
end

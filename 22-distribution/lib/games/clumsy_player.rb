#####
# Pragmatic Studio Ruby Programming
# 22 - Distribution
# This version has changes:
# 1. Embed ClumbsyPlayer class within Games module.
# 2. In test code, prefix class name with Games::.
#####

require_relative 'player'
require_relative 'treasure_trove'

module Games
  class ClumsyPlayer < Player
    def found_treasure(treasure)
      damaged_treasure = Treasure.new(treasure.name, treasure.points / 2.0)
      super(damaged_treasure)
    end
  end
end

if __FILE__ == $0
  clumsy = Games::ClumsyPlayer.new("klutz")
  
  hammer = Games::Treasure.new(:hammer, 50)
  
  clumsy.found_treasure(hammer)
  clumsy.found_treasure(hammer)
  clumsy.found_treasure(hammer)

  crowbar = Games::Treasure.new(:crowbar, 400)

  clumsy.found_treasure(crowbar)

  clumsy.each_found_treasure do |treasure|
    puts "#{treasure.points} total #{treasure.name} points"
  end
  puts "#{clumsy.points} grand total points"
end
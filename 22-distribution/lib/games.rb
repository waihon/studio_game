#####
# Pragmatic Studio Ruby Programming
# 22 - Distribution
#
# This is a new source file.
# The convention is to have one Ruby file with the same name as our gem,
# since that gets loaded when "require 'games'" is being run.
# This file is in charge of setting up our gem's code and API.
#####

## Since there's already a module named Games, we can't use that
## same name for the class.
class GamesGem
  def self.hi
    puts "games gem was set up and ready for use!"
  end
end

require 'games/auditable'
require 'games/berserk_player'
require 'games/clumsy_player'
require 'games/die'
require 'games/game'
require 'games/game_turn'
require 'games/loaded_die'
require 'games/playable'
require 'games/player'
require 'games/treasure_trove'
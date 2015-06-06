#####
# Pragmatic Studio Ruby Programming
# 22 - Distribution
# This version has changes:
# 1. Embed BerserkPlayer class within Games module.
# 2. In test code, prefix class name with Games::.
#####

require_relative 'player'

module Games
  class BerserkPlayer < Player
    def initialize(name, health=100)
      super(name, health)
      @w00t_count = 0
    end

    def berserk?
      @w00t_count > 5
    end

    def w00t
      super
      @w00t_count += 1
      puts "#{@game} is berserk!" if berserk?
    end

    def blam
      if berserk?
        w00t
      else
        super
      end
    end
  end
end

if __FILE__ == $0
  berserker = Games::BerserkPlayer.new("berserker", 50)
  6.times { berserker.w00t }
  2.times { berserker.blam }
  puts berserker.health
end
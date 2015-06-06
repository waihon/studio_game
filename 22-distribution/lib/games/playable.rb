#####
# Pragmatic Studio Ruby Programming
# 22 - Distribution
# This version has changes:
# 1. Embed Playable module within Games module.
#####

module Games
  module Playable
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

    def strong?
      @health > 100
    end
  end
end
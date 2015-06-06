#####
# Pragmatic Studio Ruby Programming
# 22 - Distribution
# This version has changes:
# 1. Embed LoadedDie class within Games module.
# 2. In test code, prefix class name with Games::.
#####

require_relative 'auditable'

module Games
  class LoadedDie
    include Auditable

    attr_reader :number

    def roll
      numbers = [1, 1, 2, 5, 6, 6]
      @number = numbers.sample
      audit
      @number
    end
  end
end

if __FILE__ == $0
  die = Games::LoadedDie.new
  puts die.roll
  puts die.roll
  puts die.roll
end
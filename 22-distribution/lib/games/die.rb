#####
# Pragmatic Studio Ruby Programming
# 22 - Distribution
# This version has changes:
# 1. Embed Die class within Games module.
# 2. In test code, prefix class name with Games::.
#####

require_relative 'auditable'

module Games
  class Die
    include Auditable

    attr_reader :number

    def initialize
      #roll
    end

    def roll
      @number = rand(1..6)
      audit
      @number
    end
  end
end

if __FILE__ == $0
  die = Games::Die.new
  puts die.roll
  puts die.number
  puts die.roll
  puts die.number
  puts die.roll
  puts die.number
end
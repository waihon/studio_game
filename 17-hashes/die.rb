#####
# Pragmatic Studio Ruby Programming
# 17 - Hashes
# This version has no changes.
#####
class Die
  attr_reader :number

  def initialize
    #roll
  end

  def roll
    @number = rand(1..6)
  end
end

if __FILE__ == $0
  die = Die.new
  puts die.roll
  puts die.number
  puts die.roll
  puts die.number
  puts die.roll
  puts die.number
end
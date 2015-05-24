#####
# Pragmatic Studio Ruby Programming
# 14 - Modules
# This are no changes in this version.
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
#####
# Pragmatic Studio Ruby Programming
# 21 - Mixins
# This version has changes:
# 1. Require 'auditable'.
# 2. Include Auditable.
# 3. Call method 'audit'.
#####

require_relative 'auditable'

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

if __FILE__ == $0
  die = Die.new
  puts die.roll
  puts die.number
  puts die.roll
  puts die.number
  puts die.roll
  puts die.number
end
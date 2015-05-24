#####
# Pragmatic Studio Ruby Programming
# 13 - Conditionals
# There are changes in this version:
# 1. w00t or blam the player based on result of rolling a die
#####
require_relative 'die'

class Game
  attr_reader :title

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def play
    puts "There are #{@players.size} player in #{@title}:"
    @players.each do |player|
      puts player
    end
    @players.each do |player|
      die = Die.new
      case die.roll
      when 1..2
        player.blam
        puts "#{player.name} got blammed."
      when 3..4
        puts "#{player.name} was skipped."
      else
        player.w00t
        puts "#{player.name} got w00ted."
      end
      puts player
    end
  end
end
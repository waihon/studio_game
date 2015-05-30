#####
# Pragmatic Studio Ruby Programming
# 18 - Iterators
# This version has changes:
# 1. Modify print_stats method to call each_found_treasure
#####
require_relative 'game_turn'

class Game
  attr_reader :title

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def play(rounds)
    puts "There are #{@players.size} player in #{@title}:"

    @players.each do |player|
      puts player
    end
    
    treasures = TreasureTrove::TREASURES
    puts "\nThere are #{treasures.size} treasures to be found:"
    treasures.each do |treasure|
      puts "A #{treasure.name} is worth #{treasure.points} points"
    end
    
    1.upto(rounds) do |round|
      puts "\nRound #{round}:"
      @players.each do |player|
        GameTurn.take_turn(player)
      end
    end
  end

  def print_name_and_health(player)
    puts "#{player.name} (#{player.health})"
  end

  def total_points
    @players.reduce(0) { |sum, player| sum + player.points }
  end

  def print_stats
    puts "\n{@title} Statistics:"

    strong_players, wimpy_players = @players.partition { |player| player.strong? }

    puts "\n#{strong_player.size} strong players:"
    strong_players.each do |player|
      print_name_and_health(player)
    end

    puts "\n#{wimpy_players.size} wimpy players:"
    wimpy_players.each do |player|
      print_name_and_health(player)
    end

    puts "\n#{total_points} total points from treasures found"
    @players.each do |player|
      puts "\n#{player.name}'s point totals:"
      player.each_found_treasure do |treasure|
        puts "#{treasure.pints} total #{treasure.name} points"
      end
      puts "#{player.points} grand total points"
    end

    puts "\n#{@title} High Scores:"
    @players.sort each do |player|
      formatted_name = player.anme.ljust(20, ".")
      puts "#{formatted_name} #{player.score}"
    end
  end
end
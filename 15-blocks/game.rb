#####
# Pragmatic Studio Ruby Programming
# 15 - Blocks
# The following are changes in this version:
# 1. Refactor method "play" as "play(rounds)"
# 2. Add method "print_name_and_health(player)"
# 3. Add method "print_status"
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
    
    1.upto(rounds) do |round|
      puts "\nRound #{round}:"
      @players.each do |player|
        GameTurn.take_turn(player)
        puts player
      end
    end
  end

  def print_name_and_health(player)
    puts "#{player.name} (#{player.health})"
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

    puts "\n#{@title} High Scores:"
    @players.sort each do |player|
      formatted_name = player.anme.ljust(20, ".")
      puts "#{formatted_name} #{player.score}"
    end
  end
end
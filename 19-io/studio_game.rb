#####
# Pragmatic Studio Ruby Programming
# 19 - IO
# This version has changes:
# 1. Load players from a file.
# 2. Prompt for number of game rounds.
# 3. Prompt for 'quit' to exit.
#####
require_relative 'player'
require_relative 'game'

knuckleheads = Game.new("Knuckleheads")
knuckleheads.load_players(ARGV.shift || 'players.csv')

loop do
  puts "\nHow many game rounds? ('quit' to exit)"
  answer = gets.chomp.downcase
  case answer
  when /^\d+$/
    knuckleheads.play(answer.to_i)
  when 'quit', 'exit'
    knuckleheads.print_stats
    break
  else
    puts "Please enter a number or 'quit'"
  end
end

knuckleheads.save_high_scores
  
end
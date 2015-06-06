#####
# Pragmatic Studio Ruby Programming
# 22 - Distribution
# This is a new source file.
#####
require 'games'

if __FILE__ == $0
  # Handshaking
  puts GamesGem.hi

  knuckleheads = Games::Game.new("knuckleheads")

  player = Games::Player.new("moe")
  berserker = Games::BerserkPlayer.new("berserker")
  clumsie = Games::ClumsyPlayer.new("clumsie")

  knuckleheads.add_player(player)
  knuckleheads.add_player(berserker)
  knuckleheads.add_player(clumsie)

  knuckleheads.play(3)
  knuckleheads.print_stats
  knuckleheads.save_high_scores
end
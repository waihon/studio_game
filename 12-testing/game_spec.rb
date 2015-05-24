#####
# Pragmatic Studio Ruby Programming
# 12 - Testing
# This is a new source file
#####
require_relative 'game'
require_relative 'player'

describe Game do
  before do
    @game = Game.new("Knuckleheads")
    $stdout = StringIO.new
  end

  it "has a title" do
    expect(@game.title).to eq("Knuckleheads")
  end

  it "gives each player 2 w00ts and 1 blam when played" do
    initial_health  = 100
    player = Player.new("moe", initial_health)

    @game.add_player(player)
    @game.play

    expect(player.health).to eq(initial_health + 15 + 15 - 10)
  end

  after(:all) do
    $stdout = STDOUT
  end
end
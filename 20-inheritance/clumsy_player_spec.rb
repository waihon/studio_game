#####
# Pragmatic Studio Ruby Programming
# 20 - Inheritance
# This is a new source file in this version.
#####

require_relative 'clumsy_player'

describe ClumsyPlayer do
  before do
    @player = ClumsyPlayer.new("klutz")
  end

  it "only get half the point value for each treasure" do
    expect(@player.points).to eq(0)

    hammer = Treasure.new(:hammer, 50)

    @player.found_treasure(hammer)
    @player.found_treasure(hammer)
    @player.found_treasure(hammer)

    expect(@player.points).to eq(75)

    crowbar = Treasure.new(:crowbar, 400)
    @player.found_treasure(crowbar)

    expect(@player.points).to eq(275)

    yielded = []
    @player.each_found_treasure do |treasure|
      yielded << treasure
    end

    expect(yielded).to eq([Treasure.new(:hammer, 75), Treasure.new(:crowbar, 200)])
  end
end
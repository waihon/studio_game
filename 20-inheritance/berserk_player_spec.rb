#####
# Pragmatic Studio Ruby Programming
# 20 - Inheritance
# This is a new source file in this version.
#####

require_relative 'berserk_player'

describe BerserkPlayer do
  before do
    @initial_health = 50
    @player = BerserkPlayer.new("berserker", @initial_health)
  end

  it "does not go berserk when w00ted up to 5 times" do
    1.upto(5) { @player.w00t }

    ## "be_falsey" and "be false" are identical to "eq(false)"
    ## http://www.relishapp.com/rspec/rspec-expectations/v/3-0/docs/built-in-matchers
    expect(@player.berserk?).to be_falsey
  end

  it "goes berserk when w00ted more then 5 times" do
    1.upto(6) { @player.w00t }

    ## "be_truthy" and "be true" are identical to "eq(true)"
    expect(@player.berserk?).to be_truthy
  end

  it "gets w00ted instead of blammed when it's gone berserk" do
    # It's gone berserk when w00ted more than 5 times
    1.upto(6) { @player.w00t }
    # It gets w00ted instead of blammed when it's gone berserk
    1.upto(2) { @player.blam }

    expect(@player.health).to eq(@initial_health + (8 * 15))
  end
end
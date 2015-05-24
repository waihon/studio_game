#####
# Pragmatic Studio Ruby Programming
# 14 - Modules
# There are no changes in this version.
#####
require_relative 'game'
require_relative 'player'

describe Game do
  before do
    @game = Game.new("Knuckleheads")

    @initial_health = 100
    @player = Player.new("moe", @initial_health)

    @game.add_player(@player)

    $stdout = StringIO.new
  end

  it "has a title" do
    expect(@game.title).to eq("Knuckleheads")
  end

  it "w00ts the player if a high number is rolled" do
    ## RSpec's old syntax: 
    ## Class_Name.any_instance.stub(:method_name).and_return(forced_value)
    #Die.any_instance.stub(:roll).and_return(5)

    ## RSpec's new syntax: 
    ## allow_any_instance_of(Class_Name).to receive(:method_name).and_return(foraced_value)
    allow_any_instance_of(Die).to receive(:roll).and_return(6)
    @game.play
    expect(@player.health).to eq(@initial_health + 15)

    allow_any_instance_of(Die).to receive(:roll).and_return(5)
    @game.play
    expect(@player.health).to eq(@initial_health + 15 + 15)
  end

  it "skips the player if a medium number is rolled" do
    allow_any_instance_of(Die).to receive(:roll).and_return(4)
    @game.play
    expect(@player.health).to eq(@initial_health)

    allow_any_instance_of(Die).to receive(:roll).and_return(3)
    @game.play
    expect(@player.health).to eq(@initial_health)
  end

  it "blams the player if a low number is rolled" do
    allow_any_instance_of(Die).to receive(:roll).and_return(2)
    @game.play
    expect(@player.health).to eq(@initial_health - 10)

    allow_any_instance_of(Die).to receive(:roll).and_return(1)
    @game.play
    expect(@player.health).to eq(@initial_health - 10 - 10)
  end

  after(:all) do
    $stdout = STDOUT
  end
end
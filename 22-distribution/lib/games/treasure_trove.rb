#####
# Pragmatic Studio Ruby Programming
# 22 - Distribution
# This version has changes:
# 1. Embed Treasure Struct within Games module.
# 2. Embed TreasureTrove module within Games module.
#####

module Games
  Treasure = Struct.new(:name, :points)

  module TreasureTrove
    TREASURES = [
      Treasure.new(:pie,          5),
      Treasure.new(:bottle,      25),
      Treasure.new(:hammer,      50),
      Treasure.new(:skillet,    100),
      Treasure.new(:broomstick, 200),
      Treasure.new(:crowbar,    400)
    ]

    def self.random
      TREASURES.sample
    end
  end
end
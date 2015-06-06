#####
# Pragmatic Studio Ruby Programming
# 22 - Distribution
# This version has changes:
# 1. Embed Auditable module within Games module.
#####

module Games
  module Auditable
    def audit
      puts "Rolled a #{self.number} (#{self.class})"
    end
  end
end
#####
# Pragmatic Studio Ruby Programming
# 21 - Mixins
# This is a new source file.
#####

module Auditable
  def audit
    puts "Rolled a #{self.number} (#{self.class})"
  end
end
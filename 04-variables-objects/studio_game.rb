#####
# Pragmatic Studio Ruby Programming
# 04 - Variables and Objects
#####
name1 = "larry"
health1 = 60
puts "#{name1.capitalize} has a health of #{health1}."

name2 = "curly"
health2 = 125
puts "#{name2.capitalize} has a health of #{health2}."

name3 = "moe"
health3 = 100
text = "#{name3.capitalize} has a health of #{health3}."
## center centers a string and pad its left and right with another 
## character or string.
puts text.center(50, '*')

# Or chain it together on one line
puts "#{name3.capitalize} has a health of #{health3}.".center(50, '*')

name4 = "shemp"
health4 = 90
## ljust left justify a string and pad its right with another
## character or string.
formatted_name = name4.capitalize.ljust(30, '.')
puts "#{formatted_name} #{health4} health"

# Or we can chain it together on one line:
puts "#{name4.capitalize.ljust(30, '.')} #{health4} health"

puts "Players: \n\t#{name1.capitalize}\n\t#{name2.capitalize}\n\t#{name3.capitalize}"

current_time = Time.now
## Format day, date, and time. e.g. Thursday 01/08/2015 at 03:14PM
## (%p - AM/PM, %P - am/pm)
formatted_time = current_time.strftime("%A %m/%d/%Y at %I:%M%p")
puts "The game started on #{formatted_time}"
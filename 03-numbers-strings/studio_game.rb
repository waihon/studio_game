#####
# Pragmatic Studio Ruby Programming
# 03 - Numbers and Strings
#####
name1 = 'larry'
health1 = 60

puts "#{name1}'s health is #{health1}"
puts "#{name1}'s health is #{health1 * 2}"

## Dividing an integer by a float (or vice versa) returns a float
puts "#{name1}'s health is #{health1 / 9.0}"

## Dividing an integer by another integer returns an integer
## (without any rounding)
puts "#{name1}'s health is #{health1 / 9}"

puts "Players: \n\tlarry\n\tmoe\n\tcurly"

# Or we could assign the anmes to variables:
name1 = 'larry'
name2 = 'moe'
name3 = 'curly'

puts "Players: \n\t#{name1}\n\t#{name2}\n\t#{name3}"
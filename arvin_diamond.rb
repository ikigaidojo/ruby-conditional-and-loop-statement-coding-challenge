require File.dirname(__FILE__) + "/arvin_diamond.rb"

# this enable this ruby script to be run from the command output. Example - $> ruby diamond.rb
if __FILE__ == $PROGRAM_NAME
  ArvinDiamond.new.main
end

class ArvinDiamond


# place your code here...
def main
	puts "Hello there..."

# begin arvin's code
puts "How big is your diamond?"
x = gets.chomp.to_i

#begin one way
def nline(x, z)
  x-z.times { print " " } # whitespace loop
  x.times { print "*" + " " } #asterisk loop
  x-z.times { print " " } #whitespace loop
  return
end

y = 0
z = x - y

until y == x # top half of diamond
  y += 1
  z -= 1
  puts nline(y, z)
end

until x == 0 # bottom half of diamond
  x -= 1
  z += 1
  puts nline(x, z)
end
#end

=begin another way
1.upto(x) do |i|
  i.upto(x - 1) { print " " }
  i.times { print " *" }
  print "\n"
end

x = x - 1

x.downto(1) do |i|
  i.upto(x) { print " " }
  i.times { print " *" }
  print "\n"
end
=end # another way

# end arvin's code
end

# do not edit beyond this point
end

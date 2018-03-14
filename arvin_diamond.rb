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

=begin one way
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
=end


def diamond(x)
  while x >= 0
    print '-' * (x - 1)
    puts '*' 
    x -= 1
  end
=begin
  if x != 0
    print '-' * (x + 1)
    x += 1
  end until x == 0
=end
end

diamond(x)

# end arvin's code
end

# do not edit beyond this point
end

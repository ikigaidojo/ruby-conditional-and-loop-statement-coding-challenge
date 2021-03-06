require File.dirname(__FILE__) + "/kate_diamond.rb"

# this enable this ruby script to be run from the command output. Example - $> ruby diamond.rb
if __FILE__ == $PROGRAM_NAME
  KateDiamond.new.main
end

class KateDiamond
	# place your code here...
	def main
    print "Enter the rows of your diamond:"
    size = gets.chomp.to_i
    puts " "

   for row in 1..size do
    for col in 1..size - row do
      print " "
    end
    for star in 1..row do
      print "* "
    end
    puts "\n"
   end

   for row in (size - 1).downto 1 do
    for col in (size - row).downto 1 do
      print " "
    end
    for star in row.downto 1 do
      print "* "
    end
    puts "\n"
   end
  end
end

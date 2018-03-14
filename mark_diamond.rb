require File.dirname(__FILE__) + "/mark_diamond.rb"

# this enable this ruby script to be run from the command output. Example - $> ruby diamond.rb
if __FILE__ == $PROGRAM_NAME
  Diamond.new.main
end

class Diamond
  def main
    print "Enter a value: "
    size = gets.chomp.to_i

    for row in 1..size do
      for col in 1..size - row do
        print " "
      end
      for star in 1..row do
        print "* "
      end
      print "\n"
    end

    for row in (size - 1).downto 1 do
      for col in (size - row).downto  1 do
        print " "
      end
      for star in row.downto 1 do
        print "* "
      end
      print "\n"
    end

=begin
Finn's code
  stars = 1
  spaces = (size -1)
  for row in 1..size do
    print "#{" " * spaces}"
    spaces -= 1
    puts "#{" *" * stars}"
    stars += 1
  end

  spaces = 1
  stars -= 2
  for row in size.downto(1) do
    buf = " " * spaces
    print buf
    spaces += 1
    puts "#{" *" * stars}"
    stars -= 1
  end
=end

  end
end

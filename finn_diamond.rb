# finn diamond practice
require File.dirname(__FILE__) + "/finn_diamond.rb"

# this enable this ruby script to be run from the command output. Example - $> ruby diamond.rb
if __FILE__ == $PROGRAM_NAME
  FinnDiamond.new.main 
end

class FinnDiamond

  def main
    puts "Enter the width of the diamond:"
    size = gets.chomp.to_i

    # safety check for extreme inputs 
    while true      
      if size < 3 
        puts "Minimun size is 3. Enter the width of the diamond:"
        size = gets.chomp.to_i
      elsif size > 50 
        puts "Maximum size is 50. Enter the width of the diamond:"
        size = gets.chomp.to_i
      else break
      end 
    end 

    def print_diamond(times, size)
      steepness = 1
      diamonds = 0
      while diamonds < times do
       #counter that increses * prints to width and counter that prints decresing spaces until loop end
        width = 1
        space = size -1
        while width <= size do 
          print " " * space
          space -= steepness
          puts "* " * width
          width += steepness
        end
        #counter that decreses * prints to 0 and counter that print incresing spaces until loop end
        width = size -1
        space = 1
        while width > 0 do
          print " " * space
          space += steepness
          puts "* " * width
          width -= steepness
        end 
        diamonds += 1
      end 
    end # print_diamond end
     
      puts "How many diamonds?:"
      multiple = gets.chomp.to_i

      # saftey check for extreme inputs
      while true 
        if multiple > 50 
          puts "Maximum diamonds is 50. How many diamonds?:"
          multiple = gets.chomp.to_i
        elsif multiple < 1
          puts "Minimum diamonds is 1. How many diamonds?:"
          multiple = gets.chomp.to_i
        else break
        end
      end 
      
    print_diamond(multiple, size)
  end # main end

end #class FinnDiamond end
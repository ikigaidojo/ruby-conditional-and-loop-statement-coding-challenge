# finn diamond practice
require File.dirname(__FILE__) + "/finn_diamond.rb"

# this enable this ruby script to be run from the command output. Example - $> ruby diamond.rb
if __FILE__ == $PROGRAM_NAME
  FinnDiamond.new.main 
end

class FinnDiamond


  #asks for diamond width, and then prints out a diamond
  def main
  
    puts "Enter the width of the diamond:"
    size = gets.chomp.to_i

    # safety check for extreme inputs 
    loop do      
    
      if size < 3 
        puts "Minimun size is 3. Enter the width of the diamond:"
        size = gets.chomp.to_i
      elsif size > 50 
        puts "Maximum size is 50. Enter the width of the diamond:"
        size = gets.chomp.to_i
      else break
      end  
        
    end
    flatness = 1
    steepness = 1
    spaces = size - flatness

    #counter that increses * prints to width and counter that print decresing spaces until loop end
    top_width = 1
    top_space = size -1
    
    while top_width <= size do
        
      print " " * top_space
      top_space -= steepness

      puts "* " * top_width
      top_width += steepness
    end
    
    
    #counter that decreses * prints to 0 and counter that print incresing spaces until loop end
    bottom_width = size -1
    bottom_space = 1

    while bottom_width > 0 do

      print " " * bottom_space
      bottom_space += steepness

      puts "* " * bottom_width
      bottom_width -= steepness
    end

  end
  
  






end
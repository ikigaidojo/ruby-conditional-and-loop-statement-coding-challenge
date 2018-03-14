puts "Enter shape width:"
width = gets.chomp.to_i

space    = " "
asterisk = "*" * width # value of width is constant
ret      = "\n"

1.upto(width) do
	print "#{ space * (width - 1) }"
	print "#{ asterisk }"
	puts  "#{ ret }"
	width -= 1 # value of width within the function will decrease
end

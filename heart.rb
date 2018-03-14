puts "How big is your heart?"
width = gets.chomp.to_i

space = "-"
asterisk = "* "
ret = "\n"

half = width / 2
lobe = half - 1

1.upto(lobe) do
	print space * lobe
	print asterisk
	lobe -= 2
	puts ret
end
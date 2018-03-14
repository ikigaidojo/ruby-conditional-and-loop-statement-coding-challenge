puts "What is the width of your hollow square?"
width = gets.chomp.to_i

space = " "
asterisk = "*"
ret = "\n"
hollow = width - 2

puts asterisk * width #square begin

1.upto(hollow) do #hollow begin
	print asterisk
	print space * (hollow)
	print asterisk
	puts ret
end

puts asterisk * width #square end
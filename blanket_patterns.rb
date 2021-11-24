# have a variable with value output it 20 times, each row,
# shift the charcter to the left by removing the first char and putting it at the end

operators = "++*~~*++*"

count = 0
lines = 20

# using loop
operators_array = operators.split("")
while count < lines
    shifted_char = operators_array.shift
    operators_array << shifted_char
    puts operators_array.join("")
    count +=1
  end

# using iterator
lines.times do |i|
    first = operators[0]
    rest = operators [1..-1]
    operators = rest + first
    puts operators
end






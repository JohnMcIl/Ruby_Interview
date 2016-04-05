#!/bin/ruby

def is_number? object
	false if Float(object) rescue true
end


def number_of_pairs(numbers, difference)
	#if numbers.each { |a| a.is_a?(Integer) }
	#	true
	if is_number?(numbers)
		#counts = new Hash { | hash, key | hash[key] = 0 }
		numbers.uniq.combination(2).to_a.count { |a| a[1] - a[0] == difference}
	else
		false
	end
end

#puts 'Numbers?'

array_size = gets.to_i;
numbers = Array.new(array_size)

for i in 0...array_size
   numbers[i] = gets.to_i
end

#puts numbers

#puts 'Difference?'

difference = gets.to_i

res = number_of_pairs(numbers, difference)
puts(res)

6
1
4
5
7
8
9
3
returns 3

1
6

2
-1
1
1
#!/bin/ruby


#Define printable characters
def non_printable?(str_a, str_b)
    if str_a.each_byte {|c| return true if c > 122 or c < 97}
    	#puts "true"
    end
    if str_b.each_byte {|c| return true if c > 122 or c < 97}
    	#puts "true"
    end
 end

#Define is number method
def is_number? object
	true if Float(object) rescue false
end

#Defined edge cases
def edgecase?(str_a, str_b)
	if is_number?(str_a)
		true
	elsif non_printable?(str_a, str_b)
		true
	elsif is_number?(str_b)
		true
	elsif str_a == nil
		true
	elsif str_b == nil
		true
	elsif str_a.to_s == ''
		true
	elsif str_b.to_s == ''
		true
	elsif ! str_a || ! str_b
		true
	elsif str_a.length != str_b.length
		true
	end
end

#Defined anagram
def anagram?(str_a, str_b)	
	counts = Hash.new { | hash, key | hash[key] = 0 }
	str_a.each_char{ |c| counts[c] += 1 }
	str_b.chars.none?{ |c| (counts[c] -= 1) < 0 }
	
end

#Defined test
def testforanagram?(str_a, str_b)
	if edgecase?(str_a, str_b)
		puts false
	else anagram?(str_a, str_b)
		puts true
	end
end


#Gets words from user input
word_a = gets.strip.downcase
word_b = gets.strip.downcase


#Run the test
testforanagram?(word_a, word_b)

# You are given a function 'secret()' that accepts a single integer parameter and returns an integer. In a language of your choice, write an application that determines if this function is an additive function [ secret(x+y) = secret(x) + secret(y) ] for all prime numbers under N where N is a given integer.

require 'prime'


def secret(n)
	return n
end

def is_additive?(x,y)
	return true if secret(x + y) == (secret(x) + secret(y))
end

def get_primes
	primes =[]
	puts "Enter a integer:"
	v = gets.chomp.to_i
	Prime.each(v-1) do |prime|
		primes << prime
	end
	print_results(primes)
end

def print_results(primes)
	primes.each do |x|
		primes.each do |y|
			is_additive?(x,y)? (puts "The function is additive for (#{x}, #{y}).") : (puts "The function is not additive for (#{x}, #{y}).") 
		end
	end
end

get_primes






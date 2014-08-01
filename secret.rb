
# You are given a function 'secret()' that accepts a single integer parameter and returns an integer. In a language of your choice, write an application that determines if this function is an additive function [ secret(x+y) = secret(x) + secret(y) ] for all prime numbers under N where N is a given integer.

require 'prime'

def secret(n)
	n
end

def additive_check(x,y)
	if secret(x + y) == (secret(x) + secret(y))
	 	puts ("The function is additive for (#{x}, #{y}).")
		return true 
	else
	 	puts ("The function is not additive for (#{x}, #{y}).")
		return false
	end
end

def function_additive(results)
	results.include?(false)? ( puts "The function is not additive." ) : ( puts "The function is additive for all Prime numbers under #{@v}." )
end

def get_primes
	primes = []

	puts "Enter a integer:"

	@v = gets.chomp.to_i

	Prime.each(@v-1) {|prime| primes << prime}
	print_results(primes)
end

def print_results(primes)
	results = []

	primes.each do |x|
		primes.each { |y| additive_check(x,y)? results <<  true : results << false }
	end

	function_additive(results) 
end

get_primes






# require 'spec_helper.rb'
require 'FizzBuzz'

=begin 
Rules : 
We count a set amount of numbers. 
Whenever a number is divisible by 3, we call out Fizz.
Whenever a number is divisible by 5, we call out Buzz.
Whenever a number is divisible by both 3 and 5, we call out FizzBuzz. 
=end 

describe 'FizzBuzz' do

	context 'FizzBuzz knows if a number is ' do

		it "divisible by 3" do
			expect(is_divisible_by_three?(3)).to be true
		end

		it "not divisible by 3" do 
			expect(is_divisible_by_three?(1)).to be false 
		end 

		it "divisible by 5" do
			expect(is_divisible_by_five?(5)).to be true
		end

		it "not divisible by 5" do
			expect(is_divisible_by_five?(4)).to be false
		end

		it "divisible by 15" do
			expect(is_divisible_by_fifteen?(15)).to be true
		end

		it "not divisible by 15" do
			expect(is_divisible_by_fifteen?(14)).to be false
		end

	end 

	context 'Fizzbuzz returns' do

		it "'Fizz' if number is divisible by 3" do 
			expect(fizzbuzz(6)).to eq "Fizz"
		end 

		it "the number if it is not divisible by 3 or 5 or both" do
			expect(fizzbuzz(17)).to eq(17) 
		end

		it "'Buzz' if number is divisible by 5" do 
			expect(fizzbuzz(10)).to eq "Buzz"
		end 

		it "'FizzBuzz' if number is is_divisible_by_fifteen" do
			expect(fizzbuzz(45)).to eq "FizzBuzz"
		end

	end

end
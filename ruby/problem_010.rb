#!/usr/bin/env ruby
require 'pry'

class SumPrimes
  attr_accessor :limit, :prime_numbers

  def initialize
    @limit = welcome
    @prime_numbers = [2, 3]
    get_prime_factors
    puts @prime_numbers.inject(:+)
  end

  def get_prime_factors
    (4..@limit).each do |value|
      @prime_numbers.each do |prime|
        break if value % prime == 0
        @prime_numbers << value if prime == @prime_numbers.last
      end
    end
  end

  def welcome
    puts "Get Summations of Primes"
    print "Limit: "
    STDOUT.flush
    gets.chomp.to_i
  end
end

SumPrimes.new

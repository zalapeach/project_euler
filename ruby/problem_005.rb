#!/usr/bin/env/ ruby
require 'pry'

class SmallestMultiple
  attr_accessor :prime_numbers

  def initialize
    limit = welcome
    get_prime_factors(limit)
    raise_prime_under(limit)
  end

  def get_prime_factors(limit)
    @prime_factors = [2, 3]
    (4..limit).each do |value|
      @prime_factors.each do |prime|
        if value % prime == 0
          break
        else
          if prime == @prime_factors.last
            @prime_factors << value
          end
        end
      end
    end
  end

  def raise_prime_under(limit)
    @prime_factors.each_with_index do |prime, index|
      i = 2
      while (prime ** i < limit)
        if prime ** i < limit
          i += 1
        end
      end
      @prime_factors[index] **= (i - 1)
    end
  end

  def welcome
    puts "Get Smallest Multiple of consecutive number"
    print "Limit: "
    STDOUT.flush
    gets.chomp.to_i
  end
end

SmallestMultiple.new

#!/usr/bin/env ruby

require 'pry'

class Prime
  attr_accessor :nth_prime, :primes

  def initialize
    @nth_prime = welcome
    @primes = [2]
    puts get_prime_values
  end

  def get_prime_values
    value = 2
    while (@primes.length < @nth_prime)
      value += 1
      @primes.each do |prime|
        break if value % prime == 0
        if prime == @primes.last
          @primes << value
        end
      end
    end
    @primes.last
  end

  def welcome
    puts 'Get nth Prime'
    print 'Nth prime: '
    STDOUT.flush
    gets.chomp.to_i
  end
end

Prime.new

#!/usr/bin/env ruby
require 'pry'

class SumPrimes
  attr_accessor :limit, :prime_numbers

  def initialize
    @limit = welcome
    get_limits
  end

  def get_limits
    sievebound = (limit - 1) / 2
    @sieve = Array.new(sievebound, false)
    crosslimit = (Math.sqrt(@limit).round - 1) / 2
    mark_multiples(crosslimit, sievebound)
  end

  def mark_multiples(crosslimit, sievebound)
    (1..crosslimit).each do |i|
      if !@sieve[i]
        j = 2 * i * (i + 1)
        j.step(sievebound, 2 * i + 1) { |loop| @sieve[loop] = true }
      end
    end
    get_sum(sievebound)
  end

  def get_sum(sievebound)
    sum = 2
    (1..sievebound).each { |i| sum += 2 * i + 1 if !@sieve[i] }
    puts sum
  end

  def welcome
    puts "Get Summations of Primes"
    print "Limit: "
    STDOUT.flush
    gets.chomp.to_i
  end
end

SumPrimes.new

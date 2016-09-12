#!/usr/bin/env ruby
require 'pry'

class PrimeFactor
  attr_accessor :prime_factor

  def initialize
    number = welcome
    get_factors(number)
  end

  def get_factors(number)
    factor = 2
    while number > 1
      while (number % factor == 0)
        number /= factor
      end
      factor += 1 if number > 1
    end
    puts factor
  end

  def

  def welcome
    puts "Get largest prime factor"
    print "Number: "
    STDOUT.flush
    gets.chomp.to_i
  end
end

PrimeFactor.new

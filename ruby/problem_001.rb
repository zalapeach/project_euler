#!/usr/bin/env ruby
require 'pry'

class Multiply
  attr_accessor :limit, :result

  def initialize
    welcome
    @result = 0
    @result = multiples(3) + multiples(5) - multiples(15)
    print_result
  end

  def print_result
    puts @result
  end

  def multiples(number)
    multiples = @limit / number
    sum = 0
    multiples.times do |value|
      result = (value + 1) * number
      sum += result if result < @limit
    end
    sum
  end

  def welcome
    puts "Multiples of 3 and 5"
    print "Limit: "
    STDOUT.flush
    @limit = gets.chomp.to_i
  end
end

Multiply.new

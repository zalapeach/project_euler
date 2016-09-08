#!/usr/bin/env ruby
require 'pry'

class Multiply
  attr_accessor :limit, :sum

  def initialize
    welcome
    @sum = 2
    get_fibonacci_number(1, 2)
  end

  def get_fibonacci_number(value1, value2)
    if (value1 + value2) < @limit
      value2 = value1 + value2
      value1 = value2 - value1
      @sum += value2 if value2 % 2 == 0
      get_fibonacci_number(value1, value2)
    else
      puts @sum
    end
  end

  def welcome
    puts "Sum Even fibonacci numbers"
    print "Limit: "
    STDOUT.flush
    @limit = gets.chomp.to_i
  end
end

Multiply.new

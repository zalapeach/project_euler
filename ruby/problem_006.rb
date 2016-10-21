#!/usr/bin/env ruby

require 'pry'

class SumSquareDifference
  attr_accessor :limit

  def initialize
    @limit = welcome
    puts get_square_sum - get_sum_square
  end

  def get_sum_square
    result = 0
    @limit.downto(1) { |i| result += i ** 2 }
    result
  end

  def get_square_sum
    result = 0
    @limit.downto(1) { |i| result += i }
    result **= 2
  end

  def welcome
    puts 'Get Sum Square Difference'
    print 'Limit: '
    STDOUT.flush
    gets.chomp.to_i
  end
end

SumSquareDifference.new

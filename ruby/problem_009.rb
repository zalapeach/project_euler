#!/usr/bin/env ruby

require 'pry'

class PythagoreanTriplet
  attr_accessor :sum, :triplets

  def initialize
    @sum = welcome
    a, b, c = get_pythagorean_triplet
    print_pythagorean_triplet(a, b, c)
  end

  def get_pythagorean_triplet
    m = 0
    (0..@sum).each do |n|
      delta = n**2 + 2*@sum
      m1 = (-n + Math.sqrt(delta)) / 2
      m2 = (-n - Math.sqrt(delta)) / 2
      if m1 % 1 == 0 && m1 > n
        m = m1
      elsif m2 % 1 == 0 && m2 > n
        m = m2
      end
      if m != 0
        return [2*m*n, m**2 - n**2, m**2 + n**2]
        break
      end
    end
    return [0, 0, 0]
  end

  def print_pythagorean_triplet(a, b, c)
    if (a + b + c) > 0
      puts "#{ a } x #{ b } x #{ c } = #{ a*b*c }"
    else
      puts "no pythagorean triplet with this sum"
    end
  end

  def welcome
    puts 'Gets product abc'
    print 'Total sum: '
    STDOUT.flush
    gets.chomp.to_i
  end
end

PythagoreanTriplet.new

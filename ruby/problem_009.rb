#!/usr/bin/env ruby

require 'pry'

class PythagoreanTriplet
  attr_accessor :sum, :triplets

  def initialize
    @sum = welcome
    @triplets = []
    get_pythagorean_triplet(1, 2)
  end

  def get_pythagorean_triplet(m, n)
    calculate_values(m, n)
    get_pythagorean_triplet(m + 1, n + 1)
  end

  def calculate_values(m, n)
    a = (n ** 2) - (m ** 2)
    b = 2 * n * m
    c = (n ** 2) + (m ** 2)
    store_pythagoran_triplet(a, b, c)
  end

  def store_pythagoran_triplet(a, b, c)
    @triplets << [a, b, c]
    get_composite_pythagorean_triplet if @triplets.size > 1
  end

  def get_composite_pythagorean_triplet
    binding.pry
  end

  def welcome
    puts 'Gets product abc'
    print 'Total sum: '
    STDOUT.flush
    gets.chomp.to_i
  end
end

PythagoreanTriplet.new

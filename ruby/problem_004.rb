#!/usr/bin/env ruby
require 'pry'

class LargestPalindrome
  attr_accessor :largest_palindrome

  def initialize
    limit = ('9' * welcome).to_i
    @greatest_palindrome = 0
    search_palindrome(limit)
    puts @greatest_palindrome
  end

  def search_palindrome(limit)
    limit2 = limit
    limit.downto(1) do |x|
      limit2.downto(1) do |y|
        product = x * y
        if product.to_s == product.to_s.reverse
          if product > @greatest_palindrome
            @greatest_palindrome = product
          end
        end
      end
      limit2 -= 1
    end
  end

  def welcome
    puts "Get largest Palindrome from the product of 2 numbers"
    print "Digits: "
    STDOUT.flush
    gets.chomp.to_i
  end
end

LargestPalindrome.new

require_relative 'prime'
require 'terminal-table'
class Table
  attr_reader :primes

  def initialize(size)
    @primes = Prime.get(size)
  end

  def line(n)
    if n == 1
      @primes
    else
      line = []
      @primes.each_with_index do |p, index|
        if index == 0
          line << @primes[n - 1]
        else
          line << @primes[n - 1] * p
        end
      end
      line
    end
  end

  def get
    table = []
    1.upto(@primes.size) do |n|
      table << line(n)
    end
    table
  end
end

puts Terminal::Table.new :rows => Table.new(10).get

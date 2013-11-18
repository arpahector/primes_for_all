class Prime < Fixnum
	def self.get(number)
    # Sieve of Eratosthenes is faster but I don't have the time for that right now
    primes = [2, 3]
    if number <= 2
      primes[0..number-1]
    else
      state = Numeric.new
      i = 4
      while primes.size < number
        i += 1
        (2..(Math.sqrt(i).ceil)).each do |t|
          state = 1
          if (i.divmod(t)[1] == 0)
             state = 0
             break
          end
       end
       primes << i unless (state == 0)
      end
      primes
    end
  end

  def self.nth(number)
    # This is not optimum at all
    self.get(number).last
  end
end

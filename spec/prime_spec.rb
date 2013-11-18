require 'spec_helper'

describe Prime do
	it "generates the first 1..10 prime numbers" do
    p = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
    10.times do |i|
      Prime.get(i + 1).should == p[0..i]
    end
  end

  it "5th number is 11" do
    Prime.nth(5).should == 11
  end
end

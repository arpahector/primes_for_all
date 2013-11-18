require 'spec_helper'

describe Table do
  before :all do
    @t = Table.new(3)
  end

  it "should print a 3x3 multiplication table" do
    @t.get.should == [[2, 3, 5], [3, 9, 15], [5, 15, 25]]
  end

  it "should get the list of the required prime numbers" do
    @t.primes.should == [2, 3, 5]
  end

  it "should get the multiplication lines" do
    @t.line(1).should == [2, 3, 5]
    @t.line(2).should == [3, 9, 15]
    @t.line(3).should == [5, 15, 25]
  end
end


require 'rspec/autorun'

class Factorial
    def factorial(num)
        (1..num).inject(:*)
    end
end



describe Factorial do
    let(:calculator) {Factorial.new}
it "find the factorial of 4" do
    expect(calculator.factorial(4)).to eq(24)
end

it "find the factorial of 2" do
    expect(calculator.factorial(2)).not_to eq(3)
end

it "find the factorial of 3" do

expect(calculator.factorial(3)).to eq(6)
end

end


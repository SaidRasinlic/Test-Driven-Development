require './solver'

describe Solver do
  before :all do
    @solver = Solver.new
  end

  context 'testing the solver class' do
    it 'method arise an error if number is zero' do
      expect(@solver.factorial(0)).to eql 1
    end
    it 'method arise an error if number is positive' do
      expect(@solver.factorial(4)).to eql 24
    end
    it 'method arise an error if number is negative' do
      expect { @solver.factorial(-6) }.to raise_error(RangeError, 'Number should not be negative')
    end
  end

  context 'Given a non empty string the reverse method' do
    it 'should return the reversed string' do
      string = 'hello'
      expected_reversed_string = 'olleh'
      expect(@solver.reverse(string)).to eql(expected_reversed_string)
    end
  end

  context 'Given an empty string the reverse method' do
    it 'should return the empty string' do
      string = ''

      expect(@solver.reverse(string)).to eql(string)
    end
  end

  context 'Given a number is divisible by 3, the fizzbuzz method' do
    it 'should return the string "fizz"' do
      number1 = 3
      number2 = 150

      result1 = @solver.fizzbuzz(number1)
      result2 = @solver.fizzbuzz(number2)

      expect(result1).to eql('fizz')
      expect(result2).to eql('fizz')
    end
  end

  context 'Given a number is divisible by 5, the fizzbuzz method' do
    it 'should return the string "buzz"' do
      number1 = 5
      number2 = 25

      result1 = @solver.fizzbuzz(number1)
      result2 = @solver.fizzbuzz(number2)

      expect(result1).to eql('buzz')
      expect(result2).to eql('buzz')
    end
  end
end

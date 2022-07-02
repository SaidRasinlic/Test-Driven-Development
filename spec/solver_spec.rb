require './solver'

describe Solver do
  context 'testing the solver class' do
    solver = Solver.new

    it 'method arise an error if number is zero' do
      expect(solver.factorial(0)).to eql 1
    end
    it 'method arise an error if number is positive' do
      expect(solver.factorial(4)).to eql 24
    end
    it 'method arise an error if number is negative' do
      expect { solver.factorial(-6) }.to raise_error(RangeError, 'Number should not be negative')
    end
  end
end

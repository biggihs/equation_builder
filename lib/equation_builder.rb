class EquationBuilder

  def initialize numbers, result, operators
    @numbers = numbers
    @result = result
    @operators = operators
  end

  def solve
    @numbers.permutation do |numbers|
      @operators.repeated_permutation(@numbers.length - 1) do |operators|
        expression = numbers.zip(operators).flatten.join
        return expression if eval(expression) == @result
      end
    end
    ''
  end
end
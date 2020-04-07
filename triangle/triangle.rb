=begin
Write your code for the 'Triangle' exercise in this file. Make the tests in
`triangle_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/triangle` directory.
=end

class Triangle
    def initialize(numbers)
        @numbers = numbers
    end
    
    def equilateral?
        triangle? && @numbers.uniq.count == 1 && @numbers.min > 0
    end
    
    def isosceles?
        triangle? && @numbers.uniq.count != 3
    end

    def scalene?
        triangle? && @numbers.uniq.count == 3 && @numbers.min > 0
    end

    def triangle?
        a, b, c = @numbers
        a + b > c && b + c > a && c + a > b
    end
end

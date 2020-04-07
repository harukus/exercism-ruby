=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series

    def initialize(number)
        @number = number
    end

    def slices(n)
        if n > @number.chars.length
            raise ArgumentError
        end
        @number.chars.each_cons(n).map{|x| x.join}
    end

end
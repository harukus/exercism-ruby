=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end


class Raindrops
    def self.convert(n)
        if n % 105 == 0
            "PlingPlangPlong"
        elsif n % 35 == 0
            "PlangPlong"
        elsif n % 21 == 0
            "PlingPlong"
        elsif n % 15 == 0
            "PlingPlang"
        elsif n % 3 == 0
            "Pling"
        elsif n % 5 ==0
            "Plang"
        elsif n % 7== 0
            "Plong"
        else
            n.to_s
        end
    end
end
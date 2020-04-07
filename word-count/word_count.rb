=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end


class Phrase
    def initialize(words)
        @words = words
    end
    def word_count
        a = @words.
            split(/[^a-zA-Z0-9']/).
            filter{|word| word != ""}.
            map(&:downcase). 
            map{|w| w.delete_prefix("'").delete_suffix("'" )} # 先頭と末尾の ' を削除

            b = {}
        b.default = 0
        a.each {|x| b[x] += 1}
        b
    end
end
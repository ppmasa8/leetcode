# @param {String[]} words
# @return {String}
def first_palindrome(words)
    words.each do |word|
        return word if word.chars == word.chars.reverse
    end
    return ''
end

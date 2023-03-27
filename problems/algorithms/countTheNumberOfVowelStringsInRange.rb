# @param {String[]} words
# @param {Integer} left
# @param {Integer} right
# @return {Integer}
def vowel_strings(words, left, right)
    vowel = /[aiueo]/
    count = 0
    (left..right).each do |i|
        count += 1 if words[i][0].match(vowel) && words[i][-1].match(vowel)
    end
    count
end

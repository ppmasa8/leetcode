# @param {String[]} words
# @return {String[]}
def remove_anagrams(words)
    res = [words[0]]
    (1...words.size).each do |i|
        if words[i].chars.sort != words[i-1].chars.sort
            res << words[i]
        end
    end
    res
end

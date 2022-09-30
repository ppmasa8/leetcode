# @param {String[]} words1
# @param {String[]} words2
# @return {Integer}
def count_words(words1, words2)
    res = 0
    hash = Hash.new(0)
    words2.each do |w|
        hash[w] += 1
    end
    hash.each do |k, v|
        if v == 1
            res += 1 if words1.count(k) == 1
        end
    end
    res
end

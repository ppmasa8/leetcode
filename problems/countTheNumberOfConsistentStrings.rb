# @param {String} allowed
# @param {String[]} words
# @return {Integer}
def count_consistent_strings(allowed, words)
    allow_elem = allowed.split("")
    cnt = 0
    words.each do |word|
        elem = word.split("").uniq
        cnt += 1 if elem.all?{|e| allow_elem.include?(e) }
    end
    cnt
end

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    hash1, hash2 = Hash.new(0), Hash.new(0)
    s, t = s.chars, t.chars
    s.each do |str|
        hash1[str]+=1
    end
    t.each do |str|
        hash2[str]+=1
    end
    hash1 == hash2
end
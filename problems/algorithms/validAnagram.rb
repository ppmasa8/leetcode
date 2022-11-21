# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    s_hash, t_hash = Hash.new(0), Hash.new(0)
    s.chars.each do |char|
        s_hash[char] += 1
    end
    t.chars.each do |char|
        t_hash[char] += 1
    end
    
    s_hash.sort == t_hash.sort
end

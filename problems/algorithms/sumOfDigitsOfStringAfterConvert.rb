# @param {String} s
# @param {Integer} k
# @return {Integer}
def get_lucky(s, k)
    res = convert(s)
    k.times{ res = transform(res) }
    res.to_i
end

def convert(s)
    res = []
    base = "a".ord
    s.chars.each{|a| res << a.ord - base + 1 }
    res.join
end

def transform(str)
    res = 0
    str.chars.each{|a| res += a.to_i }
    res.to_s
end

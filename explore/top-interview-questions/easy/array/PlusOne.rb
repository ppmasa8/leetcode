# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    res = digits.join.to_i + 1
    return res.to_s.chars.map(&:to_i)
end
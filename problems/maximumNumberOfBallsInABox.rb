# @param {Integer} low_limit
# @param {Integer} high_limit
# @return {Integer}
def count_balls(low_limit, high_limit)
    hash = Hash.new(0)
    (low_limit..high_limit).each do |n|
        tmp = n.to_s.split("").map(&:to_i)
        hash[tmp.sum] += 1
    end
    hash.values.max
end

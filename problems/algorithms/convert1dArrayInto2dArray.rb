# @param {Integer[]} original
# @param {Integer} m
# @param {Integer} n
# @return {Integer[][]}
def construct2_d_array(original, m, n)
    res = []
    return res if original.size != m * n
    (0...m).each do |i|
        res << original[i*n...(i+1)*n]
    end
    res
end

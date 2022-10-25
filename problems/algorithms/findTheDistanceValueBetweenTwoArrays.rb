# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @param {Integer} d
# @return {Integer}
def find_the_distance_value(arr1, arr2, d)
    cnt = 0
    (0...arr1.size).each do |i|
        bool = true
        (0...arr2.size).each do |j|
             if d >= (arr1[i] - arr2[j]).abs
                 bool = false
                 break
             end
        end
        cnt += 1 if bool
    end
    return cnt
end

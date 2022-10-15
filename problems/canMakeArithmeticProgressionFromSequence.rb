# @param {Integer[]} arr
# @return {Boolean}
def can_make_arithmetic_progression(arr)
    arr.sort!
    diff = arr[0] - arr[1]
    (0...arr.size - 1).each do |i|
        return false if arr[i] - arr[i+1] != diff
    end
    return true
end

# @param {Integer[]} arr
# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @return {Integer}
def count_good_triplets(arr, a, b, c)
    n = arr.size
    cnt = 0
    (0...n).each do |i|
        (i+1...n).each do |j|
            (j+1...n).each do |k|
                cnt += 1 if (arr[i]-arr[j]).abs<=a && (arr[j]-arr[k]).abs<=b && (arr[i]-arr[k]).abs<=c
            end
        end
    end
    cnt
end

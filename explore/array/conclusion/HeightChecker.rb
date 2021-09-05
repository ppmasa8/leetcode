# @param {Integer[]} heights
# @return {Integer}
def height_checker(heights)
    h_sort = heights.sort; i = cnt = 0
    while i < heights.size
        cnt += 1 if h_sort[i] != heights[i]
        i += 1
    end
    cnt
end
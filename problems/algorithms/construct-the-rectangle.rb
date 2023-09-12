# @param {Integer} area
# @return {Integer[]}
def construct_rectangle(area)
    w = Integer.sqrt(area)
    while (area % w) != 0
        w -= 1
    end
    [area/w, w]
end

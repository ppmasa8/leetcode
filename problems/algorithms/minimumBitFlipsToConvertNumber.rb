# @param {Integer} start
# @param {Integer} goal
# @return {Integer}
def min_bit_flips(start, goal)
    s, g = start.to_s(2), goal.to_s(2)
    cnt = 0
    if s.size > g.size
        (s.size - g.size).times{g = "0" + g}
    elsif g.size > s.size
        (g.size - s.size).times{s = "0" + s}
    end
    (0...s.size).each do |i|
        cnt += 1 if s[i] != g[i]
    end
    cnt
end

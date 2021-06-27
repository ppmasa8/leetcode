# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  return 1 if n == 1
  cache = [1, 2]
  (n - 2).times do
    cache.push(cache[-2] + cache[-1])
  end
  cache[-1]
end

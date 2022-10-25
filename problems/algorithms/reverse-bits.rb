# @param {Integer} n, a positive integer
# @return {Integer}
def reverse_bits(n)
  num, size = 0, 31
  while n > 0
    num += (n & 1) << size
    n = n >> 1
    size -= 1
  end
  return num
end
# @param {Integer} n
# @return {Integer}
def fib(n)
    return 0 if n == 0
    res = 0
    fib_arr = [0, 1]
    (2..n).each do |i|
      fib_arr << fib_arr[-1] + fib_arr[-2]
    end
    return fib_arr[-1]
end

require "prime"
# @param {Integer} n
# @return {Integer}
def count_primes(n)
  count = 0
  prime_enumerable = Prime.each
  count += 1 while prime_enumerable.next < n
  count
end
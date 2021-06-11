# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  x = x.to_s
  valid = true
  valid = false if x.reverse != x

  return valid
end
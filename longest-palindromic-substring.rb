# @param {String} s
# @return {String}
def longest_palindrome(s)
  return "" if s.empty?

  head, tail = 0, 0
  i = 0
  while i < s.size
    len = [find_palindrome(s, i, i), find_palindrome(s, i, i+1)].max
    if tail - head < len
      head = i - (len - 1) / 2
      tail = i + len / 2
    end
    i += 1
  end
  s[head..tail]
end

def find_palindrome(s, left, right)
  while 0 <= left && right < s.size && s[left] == s[right]
    left  -= 1
    right += 1
  end
  right - left - 1
end

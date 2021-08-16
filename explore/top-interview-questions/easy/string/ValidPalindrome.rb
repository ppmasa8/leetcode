# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    s.gsub!(/\W/, '')
    s.gsub!(/_/, '')
    s = s.downcase
    s == s.reverse
end
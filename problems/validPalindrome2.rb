# @param {String} s
# @return {Boolean}
def valid_palindrome(s)
    return true if s == s.reverse
    (0...s.size/2).each do |i|
        if s[i] != s[s.size-1-i]
            tmp, tmp2 = s, s.reverse
            tmp[i], tmp2[i] = "", ""
            return tmp == tmp.reverse ||
                tmp2 == tmp2.reverse
        end
    end
end

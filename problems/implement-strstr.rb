# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    ans = haystack.index(needle)
    if ans.nil?
        -1
    else
        ans
    end
end

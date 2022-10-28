# @param {String} s
# @return {Boolean}
def check_string(s)
    arr = s.chars
    arr == arr.sort
end

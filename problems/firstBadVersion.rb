# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
    return 1 if n == 1
    left, right = 0, n
    while true
        mid = (right - left) / 2 + left
        if is_bad_version(mid)
            right = mid
        else
            left = mid
        end
        return right if left + 1 >= right
    end     
end

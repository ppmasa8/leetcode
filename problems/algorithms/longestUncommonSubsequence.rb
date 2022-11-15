# @param {String} a
# @param {String} b
# @return {Integer}
def find_lu_slength(a, b)
    return a.size if a.size > b.size
    return -1 if a == b
    b.size
end

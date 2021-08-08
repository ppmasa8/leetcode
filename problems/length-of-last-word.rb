# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    s.squeeze != " " ? s.split(" ").last.size : 0
end

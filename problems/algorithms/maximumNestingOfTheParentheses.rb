# @param {String} s
# @return {Integer}
def max_depth(s)
    list = []
    max = 0
    s.chars.each do |str|
        if str == "("
            list << str
        elsif str == ")"
            list.pop
        end
        max = [list.size, max].max
    end
    max
end

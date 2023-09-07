# @param {String[]} strs
# @return {Integer}
def maximum_value(strs)
    res = strs.each.map do |str|
      if str.match?(/[a-z]/)
        str.size
      else
        str.to_i
      end
    end
    res.max
end

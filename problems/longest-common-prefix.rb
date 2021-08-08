# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return "" if strs.size == 0
  prefix = strs.pop

  strs.each do |str|
    while prefix != str.slice(0...prefix.size)
      prefix = prefix.slice(0...prefix.size-1)
      return prefix if prefix == ""
    end
  end
  prefix
end
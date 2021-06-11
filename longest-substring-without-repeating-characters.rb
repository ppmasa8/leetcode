# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  seen_chars    = {}
  cur_sub_start = 0
  cur_length    = 0
  longest_sub   = 0

  s.each_char.with_index do |char, index|
    if seen_chars.has_key?(char) && seen_chars[char] >= cur_sub_start
      cur_sub_start    = seen_chars[char] + 1
      cur_length       = index - seen_chars[char]
      seen_chars[char] = index
    else
      seen_chars[char] = index
      cur_length += 1
      longest_sub = cur_length if cur_length > longest_sub
    end
  end

  return longest_sub
end
# @param {String} s
# @return {Boolean}
def is_valid(s)
    lists = {
      "[" => "]",
      "{" => "}",
      "(" => ")"
    }
  
    stack = []
  
    s.each_char do |str|
      if lists[str]
        stack << lists[str]
      elsif !stack.empty? && stack.pop == str
        next
      else
        return false
      end
    end
  
    stack.size == 0
  end
# @param {String} s
# @return {Boolean}
def is_valid(s)
    s = s.chars
    stack = []
    s.each do |str|
        if str == "(" || str == "{" || str == "["
            stack << str
        elsif str == ")"
            return false if stack.pop != "("
        elsif str == "}"
            return false if stack.pop != "{"
        elsif str == "]"
            return false if stack.pop != "["
        end
    end
    return stack.empty?
end

# @param {String} s
# @return {Boolean}
def are_numbers_ascending(s)
    elem = s.split(" ")
    int = []
    elem.each do |e|
        next if e.to_i == 0
        int << e.to_i
    end
    (1...int.size).each do |i|
        if int[i] <= int[i-1]
            return false
        end
    end
    return true
end

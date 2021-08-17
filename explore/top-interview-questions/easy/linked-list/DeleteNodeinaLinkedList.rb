# @param {Integer} n
# @return {String}
def count_and_say(n)
    return "1" if n == 1
    
    count_and_say(n - 1).chars.slice_when{|a, b| a != b}.map{|li| "#{li.size}#{li[0]}"}.join
end
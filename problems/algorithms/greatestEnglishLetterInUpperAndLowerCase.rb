# @param {String} s
# @return {String}
def greatest_letter(s)
    freq = {}
    greater = ""
    s.each_char do |c|
        freq[c] = 1 
        greater = c.upcase if (freq[c.downcase] && freq[c.upcase]) && c.upcase > greater
    end
    greater
end

# @param {String} text
# @return {Integer}
def max_number_of_balloons(text)
    hash = Hash['a'=>0,'b'=>0,'l'=>0,'o'=>0,'n'=>0]
    (0...text.size).each do |i|
        hash[text[i]]+=1 if hash.key?(text[i])
    end
    
    hash['l'] /= 2
    hash['o'] /= 2
    
    keys = hash.keys
    
    min = hash['a']
    (0...keys.length).each do |i|
        min=min>hash[keys[i]]?hash[keys[i]]:min
    end
    min
end

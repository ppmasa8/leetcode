# @param {String} s
# @return {Integer}
def first_uniq_char(s)
    hash = Hash.new(0)
    arr = s.split('')
    arr.each do |elem|
        hash[elem]+=1
    end
    
    temp = arr.index(hash.key(1))
    temp ? temp : -1
end
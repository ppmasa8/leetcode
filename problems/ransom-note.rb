# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    count = Hash.new(0)
    magazine.chars.map{|x| count[x]+=1}
    ransom_note.chars.all?{|x| (count[x]-=1)>=0} 
end

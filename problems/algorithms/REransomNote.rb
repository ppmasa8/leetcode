# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    hash = Hash.new(0)
    magazine.chars.each{|m|hash[m]+=1}
    ransom_note.chars.all?{|r|(hash[r]-=1)>=0}
end

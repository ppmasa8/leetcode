# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    count = Hash.new(0)
    magazine.chars.each{|c| count[c] += 1 }
    ransom_note.chars.all?{|r| (count[r] -= 1) >= 0}
end

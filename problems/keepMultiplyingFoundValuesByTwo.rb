# @param {String} text
# @param {String} first
# @param {String} second
# @return {String[]}
def find_ocurrences(text, first, second)
    text_arr = text.split(" ")
    third_words = []
    text_arr.each_cons(3) do |v|
        if v[0] == first && v[1] == second
            third_words << v[2]
        end
    end
    third_words
end

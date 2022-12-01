# @param {Integer} num
# @return {String}
def to_hex(num)
    answer = ""
    num += (0xffffffff + 1) if num < 0
    while num >= 0
        rest = num % 16
        if rest < 10
            answer = rest.to_s + answer
        else
            answer = (rest-10 + ?a.ord).chr + answer
        end
        num = num >> 4
        break if num.zero?
    end
    answer
end

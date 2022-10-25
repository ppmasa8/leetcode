# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    digits[-1] += 1
    (digits.size-1).downto(0) do |i|
        if i > 0
            digits[i-1] += digits[i] / 10
            digits[i] = digits[i] % 10
        else
            tmp = digits[i] / 10
            digits[i] %= 10
            if tmp > 0
                digits.unshift(tmp)
            end
        end
    end
    digits
end

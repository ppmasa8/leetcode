# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    carry = 1
    (1..digits.size).each do |i|
        digits[-i] += carry
        if digits[-i] == 10
            digits[-i] = 0
        else
            carry = 0
            break
        end
    end
    digits.unshift(1) if carry == 1
    digits
end

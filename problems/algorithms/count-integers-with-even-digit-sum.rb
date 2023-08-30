# @param {Integer} num
# @return {Integer}
def count_even(num)
    cnt = 0
    (1..num).each do |i|
      if i.to_s.split('').map(&:to_i).sum % 2 == 0
        cnt += 1
      end
    end
    cnt
end

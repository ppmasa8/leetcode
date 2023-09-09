# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
    res = Array.new(num_rows){|i| Array.new(i+1, 1)}
    res.each_cons(2) do |a, b|
      a.each_cons(2).with_index(1){|(c, d), index| b[index] = c + d }
    end
    res
end

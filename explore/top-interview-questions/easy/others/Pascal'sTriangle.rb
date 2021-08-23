# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
    output = []
    (0...num_rows).each do |i|
     output[i] = []
     (0..i).each do |j|
       output[i][j] = (j == 0 || j == i ? 1 : output[i-1][j-1] + output[i-1][j])
     end
    end
    output
end
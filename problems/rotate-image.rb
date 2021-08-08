# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(m)
    n = m.size
    (0..n/2).each do |i|
        (i...n-1-i).each do |j|
            m[i][j], m[j][~i], m[~i][~j], m[~j][i] = m[~j][i], m[i][j], m[j][~i], m[~i][~j]
        end
    end
end

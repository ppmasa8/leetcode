# @param {Integer[][]} matrix
# @return {Boolean}
def is_toeplitz_matrix(matrix)
    n, m = matrix.size, matrix[0].size
    (0...n-1).each do |i|
        (0...m-1).each do |j|
            return false if matrix[i][j] != matrix[i+1][j+1]
        end
    end
    return true             
end

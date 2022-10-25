# @param {Integer[][]} mat
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(mat, r, c)
    arr = mat.flatten
    return mat if arr.size != r * c
    res = []
    (0...r).each do |i|
        res << arr[i*c...(i+1)*c]
    end
    res
end

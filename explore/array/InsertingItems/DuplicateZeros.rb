# @param {Integer[]} arr
# @return {Void} Do not return anything, modify arr in-place instead.
def duplicate_zeros(arr)
    num = arr.size-1; i = 0
    while i<num
       if arr[i] == 0
           arr[i] = [0, 0]
           arr.pop; i+=1; arr.flatten!
       end
    i+=1
    end
    arr
    
end
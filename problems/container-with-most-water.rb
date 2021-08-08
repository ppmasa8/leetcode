# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  left, right = 0, height.size - 1
  result = 0
  
  while left < right
    result = [result, [height[left], height[right]].min*(right - left)].max

    if height[left] < height[right]
      left += 1
    else
      right -= 1
    end
  end
  
  result
end

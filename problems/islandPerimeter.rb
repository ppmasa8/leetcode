# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
    return 0 if grid.size == 0
    height = grid.size
    width = grid[0].size
    cnt = 0
    
    (0...height).each do |i|
        (0...width).each do |j|
            if grid[i][j] == 1
                perimeter = 4
                # top
                perimeter -= 1 if i-1 >= 0 && grid[i-1][j] == 1
                # bottom
                perimeter -= 1 if i+1 < height && grid[i+1][j] == 1
                # right
                perimeter -= 1 if j+1 < width && grid[i][j+1] == 1
                # left
                perimeter -= 1 if j-1 >= 0 && grid[i][j-1] == 1
                
                cnt += perimeter
            end
        end
    end
    cnt
end

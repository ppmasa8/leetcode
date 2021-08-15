# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
    @bool = true
    
    ## row
    (0..8).each do |i|
        row = board[i]
        check_row(row)
    end
    
    ## column
    cnt = 0
    while cnt < 9
        temp = []
        (0..8).each do |j|
            temp << board[j][cnt]
        end
        check_column(temp)
        cnt += 1
    end
    
    ## sub_box
    row, col = 0, 0
    while row < 9
        while col < 9
            check_subbox(board, row, col)
            col += 3
        end
        col = 0
        row += 3
    end
    
    @bool
end

def check_row(row)
    list = []
    row.each do |str|
        next if str == "."
        list << str
    end
    @bool = false if list.size != list.uniq.size
end

def check_column(column)
    list = []
    column.each do |str|
        next if str == "."
        list << str
    end
    @bool = false if list.size != list.uniq.size
end

def check_subbox(board, row, col)
    hash = {}
    for i in row..(row+2) do
        for j in col..(col+2) do
            next if board[i][j] == "."
            @bool = false if !hash[board[i][j]].nil?
            hash[board[i][j]] = true
        end
    end
end
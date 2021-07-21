# @param {Integer} n
# @return {Integer}
def binary_gap(n)
    bin  = n.to_s(2)
    list = []
    max  = 0
    if bin.count("1") < 2
        return 0
        exit
    end
    (0...bin.size).each do |i|
        list << i if bin[i] == "1"
        if list.size >= 2
            max = [list[-1] - list[-2], max].max
        end
    end
    max
end
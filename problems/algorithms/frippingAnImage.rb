# @param {Integer[][]} image
# @return {Integer[][]}
def flip_and_invert_image(image)
    image.each {|arr| arr.reverse! }
    n = image.size
    (0...n).each do |i|
        (0...n).each do |j|
            if image[i][j] == 0
                image[i][j] = 1
            else
                image[i][j] = 0
            end
        end
    end
    image
end

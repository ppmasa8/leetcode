class KthLargest

=begin
    :type k: Integer
    :type nums: Integer[]
=end
    def initialize(k, nums)
        @max_size = k
        @data = nums.sort.reverse[0...k]
    end


=begin
    :type val: Integer
    :rtype: Integer
=end
    def add(val)
        if  i = @data.bsearch_index{|x| x < val}
            @data.insert(i, val)
        else
            @data << val
        end
        @data.pop if @data.size > @max_size
        @data.last
    end


end

# Your KthLargest object will be instantiated and called as such:
# obj = KthLargest.new(k, nums)
# param_1 = obj.add(val)

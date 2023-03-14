class MyHashSet

    def initialize()
        @list = []
    end


=begin
    :type key: Integer
    :rtype: Void
=end
    def add(key)
        @list << key
    end


=begin
    :type key: Integer
    :rtype: Void
=end
    def remove(key)
        if @list.include?(key)
            @list.delete(key)
        end
    end


=begin
    :type key: Integer
    :rtype: Boolean
=end
    def contains(key)
        @list.include?(key)
    end


end

# Your MyHashSet object will be instantiated and called as such:
# obj = MyHashSet.new()
# obj.add(key)
# obj.remove(key)
# param_3 = obj.contains(key)

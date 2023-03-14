class MyHashMap
    def initialize()
        @list = []
    end


=begin
    :type key: Integer
    :type value: Integer
    :rtype: Void
=end
    def put(key, value)
        @list << [key, value]
    end


=begin
    :type key: Integer
    :rtype: Integer
=end
    def get(key)
        @list.reverse.each do |k, v|
            if k == key
                return v
            end
        end
        return -1
    end


=begin
    :type key: Integer
    :rtype: Void
=end
    def remove(key)
        tmp = []
        @list.each do |k, v|
            if k == key
                tmp << [k, v]
            end
        end
        tmp.each do |k, v|
            @list.delete([k, v])
        end
    end


end

# Your MyHashMap object will be instantiated and called as such:
# obj = MyHashMap.new()
# obj.put(key, value)
# param_2 = obj.get(key)
# obj.remove(key)

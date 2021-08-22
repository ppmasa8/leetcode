class MinStack

    =begin
        initialize your data structure here.
    =end
        def initialize()
            @array = Array.new()
        end
    
    
    =begin
        :type val: Integer
        :rtype: Void
    =end
        def push(val)
            @array << val
            return nil
        end
    
    
    =begin
        :rtype: Void
    =end
        def pop()
            return @array.pop
        end
    
    
    =begin
        :rtype: Integer
    =end
        def top()
            return @array[-1]
        end
    
    
    =begin
        :rtype: Integer
    =end
        def get_min()
            return @array.min
        end
    
    
    end
    
    # Your MinStack object will be instantiated and called as such:
    # obj = MinStack.new()
    # obj.push(val)
    # obj.pop()
    # param_3 = obj.top()
    # param_4 = obj.get_min()
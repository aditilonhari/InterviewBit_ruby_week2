class Solution
    # @param a : constant array of integers
    # @param b : integer
    # @return an integer
    def diffPossible(a, b)
        if a == nil || b == nil
            return nil
        end
    
        results = (0...a.size).to_a.combination(2).select { |first, last| 
            a[last] - a[first] == b || a[first] - a[last] == b
        }
        
        return 0 if results.empty?
        return 1
    end
end

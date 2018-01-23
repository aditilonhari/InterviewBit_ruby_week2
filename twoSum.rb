class Solution
    # @param a : constant array of integers
    # @param b : integer
    # @return an array of integers
    def twoSum(a, b)
        if a == nil || b == nil
            return nil
        end
    
        results = (0...a.size).to_a.combination(2).select { |first, last| 
            a[first] + a[last] == b
        }
        
        return [] if results.empty?
        results.sort_by!{|element| element[1]}
        least_index = results.select {|element| element[1] === results[0][1]}
        least_index.sort_by!{|element| element[0]}
    
        return [least_index[0][0]+1, least_index[0][1]+1]
        end
end

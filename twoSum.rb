class Solution
    # @param a : constant array of integers
    # @param b : integer
    # @return an array of integers
    def twoSum(a, b)
        if a == nil || b == nil
            return nil
        end
        
        # a_map = {}
        # a.each do |element|
        #     a_map[element] = b - element
        # end
        
        # start = []
        # stop = []
        # a_map.each do |key, value|
        #     if a_map.has_key?(value)
        #         start += [a.find_index(key)]
        #         stop += [a.find_index(value)]
        #     end
        # end
        
        # return [] if start.empty?
        # p start
        # p stop
        # return [start[0]+1, stop[0]+1]
        
        # this will find all combinations of 2 elements that add up to 9 
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

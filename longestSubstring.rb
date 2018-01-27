class Solution
    # @param a : string
    # @return an integer
    def lengthOfLongestSubstring(a)
        
        if a == nil
            return nil
        end
        
        hash = {}
        i = 0
        while i < a.length
            j = i
            temp = []
            while j < a.length
                if temp.include?a[j]
                    substr_a = temp.join()
                    hash[substr_a] = substr_a.length
                    temp = []
                    temp << a[j]
                else
                    temp << a[j]
                end
                j += 1
            end
            substr_a = temp.join()
            hash[substr_a] = substr_a.length
            i += 1
        end

        if hash.empty? && !temp.empty?
            return temp.length
        end
        if !hash.empty? && !temp.empty? && temp.length > hash.values.max
            return temp.length
        end
        return hash.values.max
    end
end

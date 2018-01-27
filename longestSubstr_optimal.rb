class Solution
    # @param a : string
    # @return an integer
    def lengthOfLongestSubstring(a)
        
        if a == nil
            return nil
        end

        if a.length == 1
            return 1
        end

        maxLen = 1
        currLen = 1
        hash = {}
        hash[a[0]] = 0
        i = 1
        while i < a.length
            prev_index = hash[a[i]]
            
            if prev_index == nil || i - currLen > prev_index
                currLen += 1
            else
                if currLen > maxLen
                    maxLen = currLen
                end
                currLen = i - prev_index
            end
            hash[a[i]] = i
            i += 1
        end        
        if currLen > maxLen
            maxLen = currLen
        end
        return maxLen
    end
end

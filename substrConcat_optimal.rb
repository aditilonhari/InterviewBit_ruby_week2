class Solution
    # @param a : string
    # @param b : constant array of strings
    # @return an array of integers
    def findSubstring(a, b)
        if a == nil || b == nil
            return nil
        end
        
        result = []
        map = {}
        b.each do |item|
            if map.has_key? item
                map[item] = 1 + map[item]
            else
                map[item] = 1
            end
        end

        len = b[0].length
        j = 0
        while j < len
            currMap = {}
            start = j
            count = 0
            i = j
           
            while i <= (a.length-len)
                substr = a[i...i+len]

                if map.has_key?substr
                    if currMap.has_key?substr
                        currMap[substr] = 1 + currMap[substr]
                    else
                        currMap[substr] = 1
                    end

                    count += 1 
                    while currMap[substr] > map[substr]
                        left = a[start...start+len]
                        currMap[left] = currMap[left] - 1
                        count -= 1
                        start = start + len
                    end
                    
                    if count == b.length
                        result << start

                        left = a[start...start+len]
                        currMap[left] = currMap[left] - 1
                        count -= 1
                        start = start + len
                    end
                else
                    currMap = {}
                    start = i + len
                    count = 0
                end
                i = i+len
            end
            j += 1
        end
    
        return result
    end
end

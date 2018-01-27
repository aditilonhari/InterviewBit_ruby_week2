class Solution
    # @param a : string
    # @param b : constant array of strings
    # @return an array of integers
    def findSubstring(a, b)
        if a == nil || b == nil
            return nil
        end
        
        n = b.length
        x = b[0].length
        total_len = n*x
        
        all_words = []
        all_permutations = b.permutation(b.length).to_a 
        all_permutations.each do |permutation|
            all_words << permutation.join()
        end
        
        i = 0
        result = []
        until i > a.length - (total_len)
            substr_a = a[i,total_len]

            if all_words.include?substr_a
                result << i
            end
            i += 1
        end
        
        return result
    end
end

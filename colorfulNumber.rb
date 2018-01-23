class Solution
    # @param a : integer
    # @return an integer
    def colorful(a)
        if a == nil
            return a
        end
        
        int_array = a.to_s.split('')

        all_uniq_products = []
        int_array.each_index do |idx|
            len = 1
            until len > (int_array.length - idx)
                substr = int_array[idx,len].map {|i| i.to_i}
                product = substr.inject(:*)
  
                return 0 if all_uniq_products.include?product
                all_uniq_products << product
                len += 1
            end
        end
        return 1
    end
end

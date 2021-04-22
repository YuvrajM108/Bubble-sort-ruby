def bubble_sort(n_arr)
    i=0
    while i < (n_arr.length()-1) do
        j=0
        while j < (n_arr.length()-1) do
            idx_1_val=n_arr[j]
            idx_2_val=n_arr[j+1]
            if idx_1_val > idx_2_val
                n_arr[j]=idx_2_val
                n_arr[j+1]=idx_1_val
            end
            j=j+1
        end
        i=i+1
    end
    return n_arr
end
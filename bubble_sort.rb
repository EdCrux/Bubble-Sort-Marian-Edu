test_array = [4,3,78,2,999,6,0,2]
test_string = ["hi","hello","hey"]



def bubble_sort_by(array)
    max = 2
    temp_array = array
    until max == array.length
        for i in 0..(array.length - max)       
            if yield(temp_array[i], temp_array[i+1]) >= 1
                t = temp_array[i];
                temp_array[i] = temp_array[i+1]
                temp_array[i+1] = t
            end   
        end
        max += 1
    end
    temp_array
end

def bubble_sort (array)
    if array[0].is_a? String
       a = bubble_sort_by(array) do |left,right| left.length - right.length ;end
    else
        a = bubble_sort_by(array) do |left,right| left <=> right ;end
    end
    return a 
end

p bubble_sort(test_string)


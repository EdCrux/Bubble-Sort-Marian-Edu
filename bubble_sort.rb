def bubble_sort_by(array)
  max = 2
  temp_array = array
  until max == array.length + 1
    (0..array.length - max).each do |i|
      if yield(temp_array[i], temp_array[i + 1]) >= 1
        t = temp_array[i]
        temp_array[i] = temp_array[i + 1]
        temp_array[i + 1] = t
      end
      next
    end
    max += 1
  end
  temp_array
end

def bubble_sort(array)
  if array[0].is_a? String
    bubble_sort_by(array) { |left, right| left.length - right.length }
  else
    bubble_sort_by(array) { |left, right| left <=> right }
  end
end


def insertion_sort(array)
  i = 0
  (i..array.length-2).each do |i|
     value = array[i+1]
    while(i >= 0 && array[i] > value)
      array[i + 1] = array[i]
      i -=1
    end

    array[i+1] = value
  end
  array
end

# puts insertion_sort([1,3,7,2,5]) 

def bubble_sort(array)

  swapped = true
  while swapped!=false
    swapped = false
    
    (0..array.length - 2).each do |i|
      if array[i] > array[i + 1]
        swap = array[i]
        array[i] = array[i+1]
        array[i+1] = swap
        swapped = true
      end
    end
  
  end
  array
end

# puts bubble_sort([1,3,7,2,5])


def merge_sort(array)

  if array.length == 1 
    array

  else
    array_left = array[0..(array.length)/2 - 1]
    array_right = array[(array.length)/2..-1]

    merge_sort (array_left)
    merge_sort (array_right)

  end

  merge(array_left, array_right)

end

def merge(left, right) #([5],[3])

  sorted_array = []

  (0..left.length-1) do |i|
    (0..right.length-1) do |j|

      if left[i] < right[j]
        sorted_array << left[i]
      else
        sorted_array << right[j]
      end

    end
  end

end














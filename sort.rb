
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

  

end












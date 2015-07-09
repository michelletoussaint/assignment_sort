
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


def merge_sort(array, count = 0)
  
  if array.length <= 1 
    return array

  else
    array_left = array[0..(array.length)/2 - 1]
    array_right = array[(array.length)/2..-1]
    print "left: "
    puts array_left.inspect
    print "right: "
    puts array_right.inspect

    array_left = merge_sort(array_left, (count + 1))
    array_right = merge_sort(array_right, (count + 1))
    print "mergesort called #{count} times \n"
    merge(array_left, array_right)

  end


end

def merge(left, right) #([5],[3])

  sorted_array = []

  # (0..right.length-1) do |j|
  until left.nil? || right.nil?
    puts "merge"
    puts left.inspect
    puts right.inspect
    if left[0] < right[0]
      sorted_array << left.shift
    else
      sorted_array << right.shift
    end

  end

  if !left.empty?
    sorted_array << left[0]
  else
    sorted_array << right[0]
  end
  puts sorted_array.inspect

end

puts merge_sort([1,3,7,2,5])













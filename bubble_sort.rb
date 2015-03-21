def bubble_sort(array)
  number_of_passes = 0
  loop do
    swapped = false
    # The element we are deciding whether to swap with the next element or not.
    sorting_el = 0
    # For n passes through an array, the last n elements will be sorted.
    last_unsorted_index = array.length - (1 + number_of_passes)
    while last_unsorted_index > 0
      # If the sorting_el is larger than the next element delete it
      # from the array and reinsert it one position higher.
      if array[sorting_el] > array[sorting_el + 1]
        array.insert(sorting_el + 1, array.delete_at(sorting_el))
        swapped = true
      end
      sorting_el += 1
      last_unsorted_index -= 1
    end
    number_of_passes += 1
    # If no elements were swapped, the array is sorted.
    break if swapped == false
  end
  array
end

test_arr = Array.new(2000).map { rand(-100000..100000) }

print bubble_sort(test_arr)

# Bubble sort which takes a block to determine the sorting method.
def bubble_sort_by(array)
end

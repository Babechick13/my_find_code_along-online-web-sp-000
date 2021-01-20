def my_find(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    if yield(collection[i])
      block_return_values << collection[i]
    end
    return collection[i] if yield(collection[i])
    i = i + 1
  end
  block_return_values
end 
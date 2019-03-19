def my_collect(arr)
  if block_given?
    count= 0
    while count < arr.length
    yield arr[count]
    count+= 1
  end
  # look at lambda or proc to solve this problem
  # because you have to pass the content of the modified block back to my_collect method
  
  arr.map do |elem|
    elem.split(" ").first
  end
  else
    "not called by a block!"
  end
end


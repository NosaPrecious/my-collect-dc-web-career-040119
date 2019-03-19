def my_collect(arr)
  if block_given?
    count= 0
    while count < arr.length
    yield arr[count]
    count+= 1
  end
  # look at lambda or proc to solve this problem
  # because you have to pass the content of the modified block back to my_collect method
  if arr[0].length < 2
    n_str= arr.join(",")
    upp_str= n_str.upcase
    n_arr= upp_str.split(",")
    n_arr
  elsif arr[0].length == 2
      arr.map do |elem|
      elem.split(" ").first
  end
  else
    arr
end
  else
    "not called by a block!"
  end
end


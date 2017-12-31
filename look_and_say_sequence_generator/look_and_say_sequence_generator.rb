def handle_first_element(first_element)
  current_array = first_element.split("")
end

def start_from(current_array, counter)
  start_from = current_array[counter]
end

def create_partial_output(current_array, current_element, start_from, previous_counter, partial_output, counter)
  start_from = start_from(current_array, counter)
  while start_from == current_element
    counter = counter + 1
    x = counter - previous_counter
    current_element = current_array[counter]
  end
  output = [partial_output + "#{x}#{start_from}", current_element, previous_counter, counter]
end

def complete_run(current_array, counter, partial_output)
  while current_array.length > counter
    current_element = current_array[counter]
    start_from = start_from(current_array, counter)
    previous_counter = counter
    output = create_partial_output(current_array, current_element, start_from, previous_counter, partial_output, counter)
    partial_output = output[0]
    previous_counter = output[2]
    counter = output[3]
  end
  partial_output
end

def look_and_say_sequence(first_element, n)
  init = first_element
  current_array = handle_first_element(first_element)
  counter = 0
  previous_counter = 0
  partial_output = ""
  n = n - 1
  i = 0
  while i < n
    i = i + 1
    first_element = complete_run(current_array, counter, partial_output)
    current_array = handle_first_element(first_element)
    answer = current_array
  end
  if answer.to_s == ""
    return init
  else
    return answer.join("").to_s
  end
end

input = File.read("input_file.dat")
celsius = input.to_i
fahrenheit = (celsius * 9 / 5) + 32
fh = File.new("temp1.out", "w")
fh.puts fahrenheit
fh.close

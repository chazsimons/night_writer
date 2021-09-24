
input_array = ARGV

translated_message = File.write("#{input_array[1]}", ARGF.readlines)

p translated_message

puts "Created '#{input_array[1]}' containing 256 characters"

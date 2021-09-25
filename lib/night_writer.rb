
input_array = ARGV

original_message = File.read("#{input_array[0]}")
translated_message = File.open("#{input_array[1]}", "w")

File.write("#{input_array[1]}", original_message)


puts "Created '#{input_array[1]}' containing #{original_message.length} characters"

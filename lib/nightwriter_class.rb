class NightWriter

  def initialize(incoming, translated)
    @dictionary = Dictionary.new
    @original_message = File.read("#{incoming}")
    @translated_message =   File.open("#{translated}", "w")
  end

  def breakdown
    @original_message.split(//)
  end
  #
  # File.write("#{arguments[1]}", original_message)
  #
  #
  # puts "Created '#{arguments[1]}' containing #{original_message.length} characters"
end

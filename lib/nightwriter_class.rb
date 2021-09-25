class NightWriter

  def initialize
    @dictionary         = Dictionary.new
    @original_message   = File.read(ARGV[0])
    @translated_message = File.open(ARGV[1], "w")
  end

  def breakdown
    @original_message.split(//)
  end

  def creation_message
     "Created '#{@translated_message}' containing #{@original_message.length} characters"
  end

  def translate
  end
  #
  # File.write("#{arguments[1]}", original_message)
  #
  #
  # puts "Created '#{arguments[1]}' containing #{original_message.length} characters"
end

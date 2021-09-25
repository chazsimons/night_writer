class Translator
  attr_reader :message,
              :new_message,
              :top_line,
              :middle_line,
              :bottom_line
  def initialize(message, path)
    @message     = message.chomp.split(//)
    @new_message = path
    @dictionary  = Dictionary.new
    @top_line    = []
    @middle_line = []
    @bottom_line = []
  end

  def to_braille
    @message.each do |character|
      if character == " "
        @top_line    << ".."
        @middle_line << ".."
        @bottom_line << ".."
      elsif character == character.upcase
        @top_line    << @dictionary.top['capital'] << @dictionary.top[character.downcase]
        @middle_line << @dictionary.middle['capital'] << @dictionary.middle[character.downcase]
        @bottom_line << @dictionary.bottom['capital'] << @dictionary.bottom[character.downcase]
      else
        @dictionary.top.keys.include?(character)
          @top_line    << @dictionary.top[character]
          @middle_line << @dictionary.middle[character]
          @bottom_line << @dictionary.bottom[character]
      end
    end
  end

  def write
     File.write("#{@new_message}", "#{@top_line.join}\n#{@middle_line.join}\n#{@bottom_line.join}")
  end

  def length_check
    @top_line
  end
end

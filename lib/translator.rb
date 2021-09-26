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
    if @top_line.length <= 40
      File.write("#{@new_message}", "#{@top_line.join}\n#{@middle_line.join}\n#{@bottom_line.join}")
    else
      split_up
    end
  end

  def split_up
    top2    = @top_line[40..80]
    middle2 = @middle_line[40..80]
    bottom2 = @bottom_line[40..80]
    File.write("#{@new_message}", "#{@top_line[0..39].join}\n#{@middle_line[0..39].join}\n#{@bottom_line[0..39].join}\n#{top2.join}\n#{middle2.join}\n#{bottom2.join}")
  end
end

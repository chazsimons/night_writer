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

  def split_up
    top2    = @top_line[40..80]
    middle2 = @middle_line[40..80]
    bottom2 = @bottom_line[40..80]
    File.write("#{@new_message}", "#{@top_line[0..39].join}\n#{@middle_line[0..39].join}\n#{@bottom_line[0..39].join}\n")
    File.write("#{@new_message}", "#{top2.join}\n#{middle2.join}\n#{bottom2.join}", mode: 'a')
  end

  def string_screen
    chop = @in_file.scan(/.{1,80}/m)
    require "pry"; binding.pry
    @top_line    = chop[0].chars.each_slice(2).map(&:join)
    @middle_line = chop[1].chars.each_slice(2).map(&:join)
    @bottom_line = chop[2].chars.each_slice(2).map(&:join)
  end

  def to_english
    assembly
    #iterate through each line array, compare them vertically by index positions
  end

  def assembly
    @top_line.map do |pair|
      @dictionary.b_e_top[pair]
    end
    @middle_line.map do |pair|
      @dictionary.b_e_middle[pair]
    end
    @bottom_line.map do |pair|
      @dictionary.b_e_bottom[pair]
    end
  end
end

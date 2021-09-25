class FileReader
  def new
    message = ARGV[0]
    File.read(message)
  end
end

require './lib/night_writer'
require './lib/dictionary'

describe NightWriter do
  before (:each) do
    @message = NightWriter.new
  end

  it 'exists' do
    expect(@message).to be_an_instance_of(NightWriter)
  end

  it 'has readable attributes' do
    expect(@message.in_file).to be_a(String)
    # expect(@message.out_file).to be_a(ARGV)
  end

  it 'can print a message' do
    expect(@message.creation_message).to eq("Created 'braille.txt' containing 16 characters")
  end

end

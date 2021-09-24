require './lib/night_writer'

describe NightWriter do
  before (:each) do
    @message = NightWriter.new
  end

  it 'exists' do
    expect(@message).to be_an_instance_of(NightWriter)
  end

  it 'can return a line of text' do
    expect(@message.message).to eq("Created 'braille.txt' containing 256 characters")
  end
end

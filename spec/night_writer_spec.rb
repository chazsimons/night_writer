require './lib/nightwriter_class'
require './lib/dictionary'

describe NightWriter do
  before (:each) do
    @message = NightWriter.new
  end

  it 'exists' do
    expect(@message).to be_an_instance_of(NightWriter)
  end

  xit 'can print a message' do
    expect(@message.creation_message).to eq("Created '#{'braille.txt'}' containing #{'original_message.txt'.length} characters")
  end

  it 'can split a message into an array' do
    expect(@message.breakdown).to be_an(Array)
    expect(@message.breakdown.count).to eq(13)
  end
end

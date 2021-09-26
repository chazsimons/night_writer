require './lib/night_reader'
require './lib/dictionary'

describe NightReader do
  before(:each) do
    @reader = NightReader.new
  end

  it 'exists' do
    expect(@reader).to be_an_instance_of(NightReader)
  end

  it 'has readable attributes' do
    expect(@reader.in_file).to be_a(String)
  end

  it 'can display a message' do
    expect(@reader.creation_message).to eq("Created 'original_message.txt' containing 8 characters")
  end
end

require './lib/dictionary'

describe Dictionary do
  before (:each) do
    @dictionary = Dictionary.new
  end

  it 'exists' do
    expect(@dictionary).to be_an_instance_of(Dictionary)
  end

  it 'can return a value per key' do
    expect(@dictionary.top['a']).to eq('O.')
    expect(@dictionary.middle['j']).to eq('OO')
    expect(@dictionary.bottom['x']).to eq('OO')
  end

  it 'can return a key by its value' do

  end
end

require './lib/dictionary'

describe Dictionary do
  before (:each) do
    @dictionary = Dictionary.new(attribute)
  end

  it 'exists' do
    expect(@dictionary).to be_an_instance_of(Dictionary)
  end

end

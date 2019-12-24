RSpec.describe Array do
  it 'provides methods based on the `RSpec.describe` argument' do
    # described_class = Array
    expect(described_class).to be(Array)
    # subject = described_class.new
    expect(subject).to eq(Array.new)
    # is_expected = expect(subject)
    is_expected.to eq(Array.new)
  end

  context 'explicitly defined subject' do
    # subject can be manually defined
    subject { [1,2,3] }
    it 'is not empty' do
      is_expected.not_to be_empty
    end
  end

  context 'can be named' do
    # you can provide a name, just like `let`
    subject(:bananas) { [4,5,6] }
    it 'can be called by name' do
     expect(bananas.first).to eq(4)
    end
  end
end


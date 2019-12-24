RSpec.shared_examples 'acts like non-nil array' do
  it 'has a size' do
    expect(subject.size).to be > 0
  end

  it 'has has non-nil values for each index' do
    subject.size.times do |index|
      expect(subject[index]).not_to be_nil
    end
  end
end

RSpec.describe 'A real array' do
  include_examples 'acts like non-nil array' do
    subject { ['zero', 'one', 'two'] }
  end
end

RSpec.describe 'A hash with integer keys' do
  include_examples 'acts like non-nil array' do
    subject { Hash[0 => 'zero', 1 => 'one', 2 => 'two'] }
  end
end


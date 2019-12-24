RSpec.describe 'Uses of `let`' do
  let(:random_number) { rand }
  let(:lazy_creation_time) { Time.now }
  let!(:eager_creation_time) { Time.now }

  it 'memoizes values' do
    first = random_number
    second = random_number
    expect(first).to be(second)
  end

  it 'creates the value lazily' do
    start_of_test = Time.now
    expect(lazy_creation_time).to be > start_of_test
  end

  it 'creates the value eagerly using `let!`' do
    start_of_test = Time.now
    expect(eager_creation_time).to be < start_of_test
  end
end


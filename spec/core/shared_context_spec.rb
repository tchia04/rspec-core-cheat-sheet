RSpec.shared_context 'test timing' do
  around do |test|
    start_time = Time.now
    test.call
    end_time = Time.now
    puts "Test ran in #{end_time - start_time} seconds"
  end
end

RSpec.describe 'big array' do
  include_context 'test timing'

  it 'has lots of elements' do
    big_array = (1..1_000_000).to_a
    expect(big_array.size).to eq(1_000_000)
  end
end


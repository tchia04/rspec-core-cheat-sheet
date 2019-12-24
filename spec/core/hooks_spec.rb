RSpec.describe 'Hooks' do
  order = []

  before(:all) { order << 'before(:all)' }
  before       { order << 'before' }
  after        { order << 'after' }
  after(:all)  { order << 'after(:all)'; puts order }

  around do |test|
    order << 'around, pre'
    test.call
    order << 'around, post'
  end

  it 'runs first test' do
    order << 'first test'
  end

  it 'runs second test' do
    order << 'second test'
  end
end


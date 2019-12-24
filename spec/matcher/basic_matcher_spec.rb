RSpec.describe 'Common, built-in expectation matchers' do
  example 'Equality' do
    expect('x'+'y').to     eq('xy')   # a == b
    expect('x'+'y').to     eql('xy')  # a.eql?(b)
    expect('x'+'y').not_to be('xy')   # a.equal?(b)
  end

  example 'Strings' do
    expect('abcd').to include('bc')
    expect('abcd').to start_with 'ab'
    expect('abcd').to end_with 'cd'
    expect('abcd').to match /[a-z]+/
  end

  example 'Collections' do
    expect([1, 2, 3]).to include(1, 3)
    expect([1, 2, 3]).to contain_exactly(3, 2, 1) # order not important
    expect({ a: 1, b: 2 }).to include(b: 2)
  end

  example 'Booleans and nil' do
    expect(true).to be true
    expect(false).to be false
    expect('abc').to be_truthy
    expect(nil).to be_falsey
    expect(nil).to be_nil
  end

  example 'Numeric' do
    expect(5).to be > 4
    expect(5).to be >= 4
    expect(5).to be < 6
    expect(5).to be <= 6
    expect(5).to be_between(4, 6).exclusive
    expect(5).to be_between(5, 6).inclusive
    expect(4.99).to be_within(0.02).of(5)
  end

  example 'Errors (exceptions)' do
    expect{ 5 / 0 }.to raise_error(ZeroDivisionError)
    expect{ 5 / 0 }.to raise_error("divided by 0")
    expect{ 5 / 0 }.to raise_error(ZeroDivisionError, "divided by 0")
  end
end


# Add one extra method to the Widget class above,
# for demonstrating change observation.
class Widget
  def fifty_percent_off!
    @cost /= 2
  end
end

RSpec.describe 'Advanced matchers' do
  example 'Change observation' do
    widget = Widget.new('Baz', 80)

    expect{ widget.has_cliche_name? }.not_to change(widget, :name)

    expect{ widget.fifty_percent_off! }.to change(widget, :cost) # 80 -> 40
    expect{ widget.fifty_percent_off! }.to change(widget, :cost).from(40).to(20)
    expect{ widget.fifty_percent_off! }.to change(widget, :cost).by(-10) # 20 -> 10
  end

  example 'Object attributes' do
    # The attributes are a hash of method names to
    # expected return values.
    expect('hi').to have_attributes(length: 2, upcase: 'HI')
  end

  example 'Yielding to blocks' do
    expect{ |b| 5.tap(&b) }.to yield_control
    expect{ |b| 5.tap(&b) }.to yield_with_args(5)
    expect{ |b| 5.tap(&b) }.to yield_with_args(Integer)
    expect{ |b| 5.tap(&b) }.not_to yield_with_no_args
    expect{ |b| 3.times(&b) }.to yield_successive_args(0, 1, 2)
  end

  example 'Output capture' do
    expect{ puts 'hi' }.to output("hi\n").to_stdout
    expect{ $stderr.puts 'hi' }.to output("hi\n").to_stderr
  end

  example 'Throws' do
    # Not to be confused with errors (exceptions).
    # Throw/catch is very rarely used.
    expect{ throw :foo, 5 }.to throw_symbol
    expect{ throw :foo, 5 }.to throw_symbol(:foo)
    expect{ throw :foo, 5 }.to throw_symbol(:foo, 5)
  end

  example 'All elements in a collection' do
    expect([3,5,7]).to all(be_odd)
    expect([3,5,7]).to all(be > 0)
  end

  example 'Compound matchers' do
    expect(5).to be_odd.and be > 0
    expect(5).to be_odd.or be_even

    # These are probably most useful in combination with
    # the `all` matcher (above). For example:
    expect([1,2,3]).to all(be_kind_of(Integer).and be > 0)
  end

  example 'Satisfy' do
    # Test against a custom predicate
    expect(9).to satisfy('be a multiple of 3'){ |x| x % 3 == 0 }
  end
end


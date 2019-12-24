RSpec.describe 'Predicate matchers' do
  example 'Array' do
    expect([]).to be_empty          # [].empty?
  end

  example 'Hash' do
    expect({a: 1}).to have_key(:a)   # {a: 1}.has_key?(:a)
    expect({a: 1}).to have_value(1)  # {a: 1}.has_value?(1)
  end

  example 'Object' do
    expect(5).not_to be_nil             # 'hi'.nil?
    expect(5).to be_instance_of Fixnum  # 5.instance_of?(Fixnum)
    expect(5).to be_kind_of Numeric     # 5.kind_of?(Numeric)
  end
end


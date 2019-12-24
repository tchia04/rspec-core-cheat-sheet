RSpec.describe 'Predicate matchers 3' do
  example 'Rarely used matchers' do
    expect(4).to respond_to(:odd?)     # 4.respond_to?(:odd?)
    expect(Pathname.new('.')).to exist # pathname.exist?
    expect(1..10).to cover(7)          # (1..10).cover?(7)
  end
end


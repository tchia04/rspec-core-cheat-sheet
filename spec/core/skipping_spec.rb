RSpec.describe 'Ways to skip tests' do
  it 'is skipped because it has no body'

  skip 'uses `skip` instead of `it`' do
  end

  xit 'uses `xit` instead of `it`' do
  end

  it 'has `skip` in the body' do
    skip
  end

  xcontext 'uses `xcontext` to skip a group of tests' do
    it 'wont run' do; end
    it 'wont run either' do; end
  end
end


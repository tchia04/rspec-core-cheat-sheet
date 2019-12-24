RSpec.describe 'Defining methods' do
  def my_helper_method(name)
    "Hello #{name}, you just got helped!"
  end

  it 'uses my_helper_method' do
    message = my_helper_method('Susan')
    expect(message).to eq('Hello Susan, you just got helped!')
  end

  context 'within a context group' do
    it 'can still use my_helper_method' do
      message = my_helper_method('Tom')
      expect(message).to eq('Hello Tom, you just got helped!')
    end
  end
end


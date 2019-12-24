RSpec.describe 'Alternate syntax' do
  example_group 'alernative to "context"' do
    example 'alternative to "it"' do
      expect(2).to eq(2)
    end
  end

  describe 'alternative to "context"' do
    specify 'alternative to "it"' do
      expect(2).to eq(2)
    end
  end
end


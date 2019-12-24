RSpec.describe 'an array of animals' do
  let(:animal_array) { [:cat, :dog, :mule] }

  it 'has three animals' do
    expect(animal_array.size).to eq(3)
  end

  context 'mutation' do
    after { expect(animal_array.size).not_to eq(3) }

    it 'can have animals added' do
      animal_array << :cow
      expect(animal_array).to eq([:cat, :dog, :mule, :cow])
    end

    it 'can have animals removed' do
      animal_array.pop
      expect(animal_array).to eq([:cat, :dog])
    end
  end
end


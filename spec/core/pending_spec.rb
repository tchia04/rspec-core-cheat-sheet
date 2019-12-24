RSpec.describe 'Ways to mark failing tests as "pending"' do
  pending 'has a failing expectation' do
    expect(1).to eq(2)
  end

  it 'has `pending` in the body' do
    pending('reason goes here')
    expect(1).to eq(2)
  end

  #pending 'tells you if a pending test has been fixed' do
  it 'tells you if a pending test has been fixed' do
    # Pending tests are supposed to fail. This test passes,
    # so RSpec will give an error saying that this pending
    # test has been fixed.
    expect(2).to eq(2)
  end
end


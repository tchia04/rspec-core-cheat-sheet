RSpec.describe 'GetTime' do
  let(:current_time) { Time.now }

  it "gets the same time over and over again" do
    puts "example 1: First current_time", current_time # => 2018-07-19 09:35:29 +0300
    sleep(3)
    puts "example 1: Second current_time. This should be the same as previous since it is in the same example", current_time # => 2018-07-19 09:35:29 +0300
  end

  it "gets the time again" do
    puts "example 2: current_time. This should be different from previous since it's a different example", current_time # => 2018-07-19 09:35:32 +0300
  end

  it 'this should fail' do
    # pending "this is a test"
    true.should == false
  end
end

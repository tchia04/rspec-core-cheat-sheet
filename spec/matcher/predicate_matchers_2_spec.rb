class Widget
  attr_accessor :name, :cost

  def initialize(name, cost)
    @name = name
    @cost = cost
  end

  def has_cliche_name?
    ['Foo', 'Bar', 'Baz'].include?(@name)
  end

  def hacker?
    @cost == 1337
  end
end

RSpec.describe 'Predicate matchers 2' do
  example 'With a custom class' do
    widget = Widget.new('Foo', 1337)

    expect(widget).to have_cliche_name
    expect(widget).to be_hacker
    expect(widget).to be_a_hacker
    expect(widget).to be_an_hacker
  end
end


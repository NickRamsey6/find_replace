require('rspec')
require('find_and_replace')

describe('#find_and_replace') do
  it("replaces whole words only") do
    expect("Hello world".find_and_replace("Ll", "bb")).to(eq("Hebbo world"))
  end
end

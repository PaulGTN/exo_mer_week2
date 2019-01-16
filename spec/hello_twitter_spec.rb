require_relative '../lib/hello_twitter'

describe "the hello_twitter method" do
  it "should return client, and client is not nil" do
    expect(hello_twitter).not_to be_nil
  end
end
require_relative '../actions/uri_encode'

describe "URIEncode" do
  
  let(:ue) { URIEncode.new }

  it "construct correct command" do
    cmd = ue.send(:construct_command, 'hogehoge')
    expect(cmd).to eq "echo 'hogehoge' | qs"
  end

  it "does uriencode for args" do
    encoded_word = ue.send(:uri_encode, 'テスト')
    expect(encoded_word).to eq '%e3%83%86%e3%82%b9%e3%83%88'
  end
end

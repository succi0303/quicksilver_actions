require_relative '../actions/uri_encode'

describe "URIEncode" do
  
  let(:ue) { QSActions::URIEncode.new }

  it "does uriencode for args" do
    encoded_text = ue.send(:update_text, 'テスト')
    expect(encoded_text).to eq '%e3%83%86%e3%82%b9%e3%83%88'
  end

  it "output result into quicksilver" do
    cmd = ue.send(:output_into_quicksilver, 'hogehoge')
    expect(cmd).to eq 'echo "hogehoge" | qs'
  end
end

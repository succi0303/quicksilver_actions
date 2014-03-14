require_relative '../actions/uri_decode'

describe "URIDecode" do

  let(:ue) { QSActions::URIDecode.new }

  it "does uri decode for args" do
    decoded_word = ue.send(:update_text, '%e3%83%86%e3%82%b9%e3%83%88')
    expect(decoded_word).to eq "テスト"
  end
end

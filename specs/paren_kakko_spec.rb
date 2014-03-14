require_relative '../actions/paren_kakko'

describe "ParenKakko" do

  let(:pk) { QSActions::ParenKakko.new }

  it "puts the text into kakko" do
    updated_text = pk.send(:update_text, "テスト")
    expect(updated_text).to eq "「テスト」"
  end
end

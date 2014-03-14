require_relative '../actions/paren_quote'

describe "ParenQuote" do

  let(:pq) { QSActions::ParenQuote.new }

  it "puts the text into single quotation" do
    updated_text = pq.send(:update_text, "テスト")
    expect(updated_text).to eq "'テスト'"
  end

  it "construct correct command" do
    cmd = pq.send(:output_into_quicksilver, 'hogehoge')
    expect(cmd).to eq 'echo "hogehoge" | qs'
  end

end


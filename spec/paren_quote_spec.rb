require 'spec_helper'

describe "ParenQuote" do

  let(:pq) { QSActions::ParenQuote.new }

  it "puts the text into single quotation" do
    updated_text = pq.send(:update_text, "テスト")
    expect(updated_text).to eq "'テスト'"
  end

end


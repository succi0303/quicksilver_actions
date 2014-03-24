require 'spec_helper'

describe "ParenQuote" do

  let(:action) { QSActions::ParenQuote.new }

  it "puts the text into single quotation" do
    edited_text = action.send(:edit_text, "テスト")
    expect(edited_text).to eq "'テスト'"
  end

end


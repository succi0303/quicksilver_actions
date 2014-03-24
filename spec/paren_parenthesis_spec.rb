require 'spec_helper'

describe "paren_parenthesis" do

  let(:action) { QSActions::ParenParenthesis.new }

  it "puts the text into parenthesis" do
    edited_text = action.send(:edit_text, "テスト")
    expect(edited_text).to eq "(テスト)"
  end

end


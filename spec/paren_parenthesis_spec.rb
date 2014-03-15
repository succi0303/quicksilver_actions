require 'spec_helper'

describe "paren_parenthesis" do

  let(:pq) { QSActions::ParenParenthesis.new }

  it "puts the text into parenthesis" do
    updated_text = pq.send(:update_text, "テスト")
    expect(updated_text).to eq "(テスト)"
  end

end


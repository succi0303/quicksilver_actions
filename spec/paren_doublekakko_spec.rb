require 'spec_helper'

describe "ParenDoubleKakko" do

  let(:action) { QSActions::ParenDoubleKakko.new }

  it "puts the text into kakko" do
    edited_text = action.send(:edit_text, "テスト")
    expect(edited_text).to eq "『テスト』"
  end
end

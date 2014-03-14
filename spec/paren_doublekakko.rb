require 'spec_helper'

describe "ParenDoubleKakko" do

  let(:pk) { QSActions::ParenDoubleKakko.new }

  it "puts the text into kakko" do
    updated_text = pk.send(:update_text, "テスト")
    expect(updated_text).to eq "『テスト』"
  end
end

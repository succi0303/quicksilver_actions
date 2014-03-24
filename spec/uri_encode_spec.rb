require 'spec_helper'

describe "URIEncode" do
  
  let(:action) { QSActions::URIEncode.new }

  it "does uriencode for args" do
    edited_text = action.send(:edit_text, 'テスト')
    expect(edited_text).to eq '%e3%83%86%e3%82%b9%e3%83%88'
  end
end

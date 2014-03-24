require 'spec_helper'

describe "URIDecode" do

  let(:action) { QSActions::URIDecode.new }

  it "does uri decode for args" do
    edited_text = action.send(:edit_text, '%e3%83%86%e3%82%b9%e3%83%88')
    expect(edited_text).to eq "テスト"
  end
end

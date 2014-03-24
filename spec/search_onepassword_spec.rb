require 'spec_helper'

describe 'search_onepassword' do

  let(:action) { QSActions::SearchOnepassword.new }

  it "make the url scheme" do
    edited_text = action.send(:edit_text, 'test')
    expect(edited_text).to eq 'onepassword4://search/test'
  end
end

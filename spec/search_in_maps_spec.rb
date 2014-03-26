require 'spec_helper'

describe 'search in maps' do

  let(:action) { QSActions::SearchInMaps.new }

  it "make the url scheme" do
    edited_text = action.send(:edit_text, 'test')
    expect(edited_text).to eq 'http://maps.apple.com/?q=test'
  end
end

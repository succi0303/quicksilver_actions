require 'spec_helper'

describe 'lookup_dictionary' do

  let(:action) { QSActions::LookupDict.new }

  it "make the url scheme" do
    edited_text = action.send(:edit_text, 'test')
    expect(edited_text).to eq 'dict://test'
  end
end

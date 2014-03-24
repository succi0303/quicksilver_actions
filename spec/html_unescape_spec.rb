require 'spec_helper'

describe "html_unescape" do

  let(:action) { QSActions::HTMLUnescape.new }

  it "does html unescape correctly" do
    edited_text = action.send(:edit_text, '&lt;html&gt;&lt;/html&gt;')
    expect(edited_text).to eq "<html></html>"
  end
end

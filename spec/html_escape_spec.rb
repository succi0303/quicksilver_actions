require 'spec_helper'

describe "html_escape" do

  let(:action) { QSActions::HTMLEscape.new }

  it "does html escape" do
    edited_text = action.send(:edit_text, '<')
    expect(edited_text).to eq '&lt;'
  end
end

require 'spec_helper'

describe "html_escape" do

  let(:he) { QSActions::HTMLEscape.new }

  it "does html escape" do
    escaped_word = he.send(:update_text, '<')
    expect(escaped_word).to eq '&lt;'
  end
end

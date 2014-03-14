require_relative '../actions/html_unescape'

describe "html_unescape" do

  let(:hu) { QSActions::HTMLUnescape.new }

  it "does html unescape correctly" do
    unescaped_word = hu.send(:update_text, '&lt;html&gt;&lt;/html&gt;')
    expect(unescaped_word).to eq "<html></html>"
  end
end

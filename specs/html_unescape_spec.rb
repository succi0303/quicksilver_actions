require_relative '../actions/html_unescape'

describe HTMLUnescape do

  let(:hu) { HTMLUnescape.new }

  it "construct correct command" do
    cmd = hu.send(:construct_command, 'hogehoge')
    expect(cmd).to eq 'echo "hogehoge" | qs'
  end

  it "does html unescape correctly" do
    unescaped_word = hu.send(:html_unescape, '&lt;html&gt;&lt;/html&gt;')
    expect(unescaped_word).to eq "<html></html>"
  end
end

require_relative '../actions/html_escape'

describe HTMLEscape do

  let(:he) { HTMLEscape.new }

  it "construct correct command" do
    cmd = he.construct_command('hogehoge')
    expect(cmd).to eq 'echo "hogehoge" | qs'
  end

  it "does html escape correctly" do
    escaped_word = he.html_escape('<')
    expect(escaped_word).to eq '&lt;'
  end
end

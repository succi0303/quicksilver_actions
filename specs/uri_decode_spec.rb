require_relative '../actions/uri_decode'

describe "URIDecode" do

  let(:ue) { URIDecode.new }

  it "construct correct command" do
    cmd = ue.construct_command('hogehoge')
    expect(cmd).to eq "echo 'hogehoge' | qs"
  end

  it "does uri decode for args" do
    decoded_word = ue.uri_decode('%e3%83%86%e3%82%b9%e3%83%88')
    expect(decoded_word).to eq "テスト"
  end
end

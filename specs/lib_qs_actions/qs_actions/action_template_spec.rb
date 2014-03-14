require_relative '../../../actions/lib_qs_actions/qs_actions'

describe "ActionTemplate" do

  let(:template) { QSActions::ActionTemplate.new }

  it "construct command correctly" do
    cmd = template.send(:output_into_quicksilver, 'hogehoge')
    expect(cmd).to eq 'echo "hogehoge" | qs'
  end
end

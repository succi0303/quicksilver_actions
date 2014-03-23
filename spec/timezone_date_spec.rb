require 'spec_helper'
require 'timecop'

describe "TimezoneDate" do

  let(:td) { QSActions::TimezoneDate.new }

  it "puts date in Japan" do
    Timecop.freeze(Time.now) do
      updated_text = td.send(:update_text, "Japan")
      expect(updated_text).to eq `TZ=Japan date`
    end
  end

  it "puts date in America/New_York" do
    Timecop.freeze(Time.now) do
      updated_text = td.send(:update_text, "America/New_York")
      expect(updated_text).to eq `TZ=America/New_York date`
    end
  end

  it "puts date in UTC" do
    Timecop.freeze(Time.now) do
      updated_text = td.send(:update_text, "UTC")
      expect(updated_text).to eq `TZ=UTC date`
    end
  end
end

require 'spec_helper'

describe RelativeTime::Schedule do
  describe ".new" do
    let(:start) { RelativeTime::Weekly.new }
    let(:endd) { RelativeTime::Weekly.new }

    let(:schedule_period) { RelativeTime::SchedulePeriod.new(start, endd) }
    let(:schedule_periods) { Set[schedule_period] }

    it "does not require any arguments" do
      expect(RelativeTime::Schedule.new).to be_a(RelativeTime::Schedule)
    end

    it "accepts a set of SchedulePeriods" do
      expect(RelativeTime::Schedule.new(schedule_periods)).to be_a(RelativeTime::Schedule)
    end
  end
end

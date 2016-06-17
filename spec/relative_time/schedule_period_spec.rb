require 'spec_helper'

describe RelativeTime::SchedulePeriod do
  describe ".new" do
    let(:start) { RelativeTime::Weekly.new }
    let(:endd) { RelativeTime::Weekly.new }

    let(:schedule_period) { RelativeTime::SchedulePeriod.new(start, endd) }

    it "accepts two arguments" do
      expect(schedule_period).to be_a(RelativeTime::SchedulePeriod)
    end

    describe "missing arguments" do
      let(:schedule_period) { RelativeTime::SchedulePeriod.new(start) }

      it "raises an exception" do
        expect{schedule_period}.to raise_error(ArgumentError)
      end
    end
  end
end

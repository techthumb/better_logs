require 'spec_helper'

describe ::BetterLogs::ActionController::LogSubscriber do
  context 'formatter' do
    subject { described_class.new.formatter }

    it "defaults to '#{::BetterLogs::Formatters::KeyValueFormatter.name}'" do
      should be_an_instance_of ::BetterLogs::Formatters::KeyValueFormatter
    end
  end

  context 'logger' do
    subject { described_class.new.logger }

    before { Rails.stub(:logger).and_return(rails_logger) }
    let(:rails_logger) { double(ActiveSupport::Logger) }

    it "defaults to 'Rails.logger'" do
      subject.should === rails_logger
    end
  end

  describe '#process_action' do
  end
end

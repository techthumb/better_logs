require 'spec_helper'

describe ::BetterLogs::ActionDispatch::LogSubscriber do
  context 'formatter' do
    subject { described_class.new.formatter }

    it "defaults to '#{::BetterLogs::Formatters::KeyValueFormatter.name}'" do
      should be_an_instance_of ::BetterLogs::Formatters::KeyValueFormatter
    end
  end

  context 'logger' do
    before              { allow(Rails).to receive(:logger).and_return(rails_logger) }
    let(:rails_logger)  { double(ActiveSupport::Logger) }
    subject             { described_class.new.logger }

    it "defaults to 'Rails.logger'" do
      should === rails_logger
    end
  end
end

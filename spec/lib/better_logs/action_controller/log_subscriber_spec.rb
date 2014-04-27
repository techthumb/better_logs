require 'spec_helper'

describe ::BetterLogs::ActionController::LogSubscriber do
  it "defaults formatter to '#{::BetterLogs::Formatters::KeyValueFormatter.name}'" do
    subject.formatter.should be_an_instance_of ::BetterLogs::Formatters::KeyValueFormatter
  end

  it 'defaults logger to Rails.logger' do
    subject.logger.should === Rails.logger
  end

  describe '#process_action' do
  end
end

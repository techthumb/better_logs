require 'spec_helper'
describe BetterLogs::Formatters::KeyValueFormatter do
  let(:payload) { BetterLogs::ActionController::Payload.new({key_one: 'value_one', key_two: 'value_two'}) }

  subject { BetterLogs::Formatters::KeyValueFormatter.new.format(payload) }
  it { should == 'key_one=value_one key_two=value_two' }
end

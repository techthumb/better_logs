require 'spec_helper'
describe BetterLogging::Formatters::KeyValueFormatter do
  let(:payload) { BetterLogging::ActionController::Payload.new({key_one: 'value_one', key_two: 'value_two'}) }

  subject { BetterLogging::Formatters::KeyValueFormatter.new.format(payload) }
  it { should == 'key_one=value_one key_two=value_two' }
end

require 'spec_helper'

describe BetterLogs::Formatters::KeyValueFormatter do
  describe '#format' do

    let(:payload) do
      BetterLogs::ActionController::Payload.new(key_one: 'value_one', key_two: 'value_two')
    end

    subject { BetterLogs::Formatters::KeyValueFormatter.new.format(payload) }

    it { should == 'key_one=value_one key_two=value_two' }
  end
end

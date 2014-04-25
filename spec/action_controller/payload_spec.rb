require 'spec_helper'
describe ::BetterLogs::ActionController::Payload do
  let(:payload) { {nested: {keys: {should: {be: {flattened: 'with dots'}}}}} }

  subject { ::BetterLogs::ActionController::Payload.new(payload) }

  describe 'when payload is a nested hash' do
    it 'flattens nested keys' do
      subject.should == { 'nested.keys.should.be.flattened' => 'with dots' }
    end
  end

  %w(action controller).each do | key |
    describe "when payload includes key :#{key}" do
      let(:payload) { {"#{key}" => :some_value} }
      it 'should remove the key' do
        subject.should_not include(key)
      end
    end
  end

  describe 'under :params' do
    %w(action controller).each do | key |
      describe "when payload includes key :#{key}" do
        let(:payload) { {params: {"#{key}" => :some_value, another: :value}} }

        it 'should move the key to root level' do
          subject.should_not include("params.#{key}")
          subject.should include(key)
          subject[key].should == :some_value
        end
      end
    end
  end
end

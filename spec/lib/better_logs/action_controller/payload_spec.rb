require 'spec_helper'
describe ::BetterLogs::ActionController::Payload do

  subject { ::BetterLogs::ActionController::Payload.new(payload) }

  describe 'when payload is a nested hash' do
    let(:payload) { {nested: {keys: {should: {be: {flattened: 'with underscores'}}}}} }
    it 'flattens nested keys' do
      expect(subject).to eq({ 'nested_keys_should_be_flattened' => 'with underscores' })
    end
  end

  describe 'when payload includes key :exception' do
    let(:payload) { {exception: 'some exception'} }
    it 'should add a status of 500' do
      expect(subject).to include('status')
      expect(subject['status']).to eq(500)
    end
  end


  %w(action controller).each do | key |
    describe "when payload includes key :#{key}" do
      let(:payload) { {"#{key}" => :some_value} }
      it 'should remove the key' do
        expect(subject).not_to include(key)
      end
    end
  end

  describe 'under :params' do
    %w(action controller).each do | key |
      describe "when payload includes key :#{key}" do
        let(:payload) { {params: {"#{key}" => :some_value, another: :value}} }

        it 'should move the key to root level' do
          expect(subject).not_to include("params.#{key}")
          expect(subject).to include(key)
          expect(subject[key]).to eq(:some_value)
        end
      end
    end
  end
end

require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start
require_relative '../lib/better_logs'

RSpec.configure do |c|
  c.run_all_when_everything_filtered = true
end
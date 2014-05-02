class ::BetterLogs::ActionDispatch::LogSubscriber < ActiveSupport::LogSubscriber
  attr_reader :formatter, :logger

  def initialize(formatter = ::BetterLogs::Formatters::KeyValueFormatter.new,
                 logger    = ::Rails.logger)
    @formatter = formatter
    @logger    = logger
  end

  def request(event)
    logger.info formatter.format(::BetterLogs::ActionDispatch::Payload.new(event.payload))
  end
end

class ::BetterLogs::ActionController::LogSubscriber < ActiveSupport::LogSubscriber
  attr_reader :formatter, :logger

  def initialize(formatter = ::BetterLogs::Formatters::KeyValueFormatter.new,
                 logger    = ::Rails.logger)
    @formatter = formatter
    @logger    = logger
    super
  end

  def process_action(event)
    logger.info formatter.format(::BetterLogs::ActionController::Payload.new(event.payload))
  end
end

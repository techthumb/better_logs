class ::BetterLogs::ActionController::LogSubscriber < ActiveSupport::LogSubscriber
  attr_reader :formatter

  def initialize(formatter)
    @formatter = (formatter || ::BetterLogs::Formatters::KeyValueFormatter.new)
  end

  def process_action(event)
    logger.info formatter.format(::BetterLogs::ActionController::Payload.new(event.payload))
  end

  private
  def logger
    Rails.logger
  end
end

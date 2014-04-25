class ::BetterLogging::ActionController::LogSubscriber < ActiveSupport::LogSubscriber
  def process_action(event)
    logger.info formatter.format(::BetterLogging::ActionController::Payload.new(event.payload))
  end

  private
  def logger
    Rails.logger
  end

  def formatter
    @formatter ||= ::BetterLogging::Formatters::KeyValueFormatter.new
  end
end

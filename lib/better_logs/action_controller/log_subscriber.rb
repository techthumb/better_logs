class ::BetterLogs::ActionController::LogSubscriber < ActiveSupport::LogSubscriber
  def process_action(event)
    logger.info formatter.format(::BetterLogs::ActionController::Payload.new(event.payload))
  end

  private
  def logger
    Rails.logger
  end

  def formatter
    @formatter ||= ::BetterLogs::Formatters::KeyValueFormatter.new
  end
end

class ::BetterLogging::Initializer
  def self.initialize
    ::BetterLogging::ActionController::LogSubscriber.attach_to :action_controller
  end
end

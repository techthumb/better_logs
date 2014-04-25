class ::BetterLogs::Initializer
  def self.initialize
    ::BetterLogs::ActionController::LogSubscriber.attach_to :action_controller
  end
end

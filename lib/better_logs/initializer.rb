class ::BetterLogs::Initializer
  def self.initialize
    ::BetterLogs::ActionController::LogSubscriber.attach_to :action_controller
    ::BetterLogs::ActionDispatch::LogSubscriber.attach_to :action_dispatch
  end
end

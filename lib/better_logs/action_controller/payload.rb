class ::BetterLogs::ActionController::Payload < DelegateClass(ActiveSupport::HashWithIndifferentAccess)
  IGNORED_KEYS = %w(action controller)
  def initialize(payload)
    payload = payload.with_indifferent_access
    data = payload.except(*IGNORED_KEYS)
    if data.has_key?(:params)
      data[:controller] = data[:params].delete(:controller)
      data[:action] = data[:params].delete(:action)
    end
    super(data.flat_keys)
  end
end

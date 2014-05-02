class ::BetterLogs::ActionDispatch::Payload < DelegateClass(ActiveSupport::HashWithIndifferentAccess)
  def initialize(payload)
    request = payload[:request]
    user_agent = UserAgent.parse(request.headers['HTTP_USER_AGENT'] || '')
    data = {
      remote_ip: request.remote_ip,
      browser:   {
        name:     user_agent.browser,
        platform: user_agent.platform,
        version:  user_agent.version.to_s
      }
    }.flat_keys('_')
    super(data)
  end
end

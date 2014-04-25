class ::BetterLogs::Railtie < Rails::Railtie
  initializer :better_logs do
    ::BetterLogs::Initializer.initialize
  end
end

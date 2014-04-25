class ::BetterLogging::Railtie < Rails::Railtie
  initializer :better_logging do
    ::BetterLogging::Initializer.initialize
  end
end

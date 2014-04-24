module ::BetterLogging
end

require 'flat_keys'
require 'active_support'
require 'active_support/core_ext/hash/indifferent_access'
require 'action_pack'

require_relative 'better_logging/initializer'

require_relative 'better_logging/action_controller'
require_relative 'better_logging/action_controller/log_subscriber'
require_relative 'better_logging/action_controller/payload'

require_relative 'better_logging/formatters'
require_relative 'better_logging/formatters/key_value_formatter'

require_relative 'better_logging/railtie' if defined?(Rails)

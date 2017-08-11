require "active_support/ordered_options"

module JsrenderRails
  class Railtie < Rails::Engine
    config.jsrender = ActiveSupport::OrderedOptions.new
    config.jsrender.prefix = ""
  end
end

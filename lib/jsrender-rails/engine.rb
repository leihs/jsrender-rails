require "active_support/ordered_options"

module JsrenderRails
  class Railtie < Rails::Engine
    config.jsrender = ActiveSupport::OrderedOptions.new
    config.jsrender.prefix = ""

    config.after_initialize do |app|
      if app.assets
        app.assets.register_engine(".jsr", Jsrender)
      end
    end
  end
end

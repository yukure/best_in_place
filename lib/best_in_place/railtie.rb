require 'rails/railtie'
require 'action_view/base'

module BestInPlace
  class Railtie < ::Rails::Railtie #:nodoc:
    config.after_initialize do
      BestInPlace::ViewHelpers = ActionView::Base.with_empty_template_cache.new({}, {}, "")
    end
  end
end

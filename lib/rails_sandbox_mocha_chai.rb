require "rails_sandbox_mocha_chai/version"
require "rails-sandbox-assets"

module RailsSandboxMochaChai
  class MochaChaiFilter
    def self.filter(controller)
      controller.template = 'mocha_chai/runner' if controller.params[:path].try :start_with?, 'chai'
    end
  end

  class Engine < Rails::Engine
    initializer 'sandbox_assets.mocha_chai' do |app|
      unless app.config.sandbox_assets.template == 'mocha_chai/runner'
        SandboxAssets::BaseController.prepend_before_filter MochaChaiFilter
      end
    end
  end
end

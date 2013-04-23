module VagrantGemPlugin
  class Plugin < Vagrant.plugin("2")
    name "Gem"

    command "gem" do
      require_relative "vagrant-gem/command"
      Command
    end
  end

  # The source root is the path to the root directory of
  # the plugin gem.
  def self.source_root
    @source_root ||= Pathname.new(File.expand_path('../../', __FILE__))
  end

  # Default I18n to load the en locale
  I18n.load_path << File.expand_path("templates/locales/en.yml", VagrantGemPlugin.source_root)
end
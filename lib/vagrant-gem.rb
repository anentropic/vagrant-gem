module VagrantGemPlugin
  class Plugin < Vagrant.plugin("2")
    name "Gem"

    command "gem" do
      require_relative "vagrant-gem/command"
      Command
    end
end
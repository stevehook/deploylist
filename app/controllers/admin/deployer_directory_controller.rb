module Admin
  class DeployerDirectoryController < ApplicationController
    def index
      @deployers = Deployer.all
    end
  end
end

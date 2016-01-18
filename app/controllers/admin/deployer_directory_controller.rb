module Admin
  class DeployerDirectoryController < ApplicationController
    def index
      @users = Deployer.all
    end
  end
end

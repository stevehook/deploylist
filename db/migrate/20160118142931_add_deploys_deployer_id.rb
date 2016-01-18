class AddDeploysDeployerId < ActiveRecord::Migration
  def change
    add_column :deploys, :deployer_id, :integer
  end
end

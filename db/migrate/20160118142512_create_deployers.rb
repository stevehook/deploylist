class CreateDeployers < ActiveRecord::Migration
  def change
    create_table :deployers do |t|
      t.string :deployer_name
      t.string :real_name

      t.timestamps null: false
    end
  end
end

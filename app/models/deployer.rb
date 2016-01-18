class Deployer < ActiveRecord::Base
  has_many :deploys

  validates :deployer_name, presence: true
  validates :real_name, presence: true
end

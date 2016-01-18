require "rails_helper"

RSpec.feature "Listing deploys" do
  include Warden::Test::Helpers
  Warden.test_mode!

  let(:user) { User.create(name: "Test user", email: "test@example.com") }

  before do
    login_as(user)
  end

  let!(:deployer) { Deployer.create(deployer_name: "bob@example.com", real_name: "Bob Marley") }

  scenario "I can list users deployer and real name" do
    visit "/admin/deployer_directory"
    expect(page).to have_content("bob@example.com")
    expect(page).to have_content("Bob Marley")
  end
end

require "rails_helper"

RSpec.describe "As a registered user " do
  before :each do
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:google_oauth2] = OmniAuth::AuthHash.new(Faker::Omniauth.google)
    visit '/'
    click_button 'Log In with Google'
  end
  describe "I click Top Rated movies " do
    it "lists 40 movies" do
      visit discover_path
      click_button "Find Top Rated Movies"

      expect(current_path).to eq(movies_path)
      expect(page).to have_selector(".movie", count:40)
    end
  end
end

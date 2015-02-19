require 'rails_helper'
require 'spec_helper'


feature "Authentications", type: :feature, driver: :chrome do
  context 'user creation' do
    given(:user) { FactoryGirl.attributes_for :user }
    
    scenario "signs up user" do
      visit new_user_registration_path
      fill_in 'Username', :with => user[:username]
      fill_in 'Name', :with => user[:name]
      fill_in 'Email', :with => user[:email]
      fill_in 'Password', :with => user[:password]
      fill_in 'Password confirmation', :with => user[:password]
      click_button 'Sign up'
      expect(current_path).to eq root_path  
    end
  end
end

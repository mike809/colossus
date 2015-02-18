require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has valid factory' do
    FactoryGirl.create(:user).should be_valid
  end
  it 'is invalid without email' do
    FactoryGirl.build(:user, email: nil).should_not be_valid
  end
  it 'is invalid without password' do
    FactoryGirl.build(:user, password: nil).should_not be_valid
  end

  it 'is invalid without username, name' do
    FactoryGirl.build(:user, username: nil, name: nil).should_not be_valid
  end

  
end

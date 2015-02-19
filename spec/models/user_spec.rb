require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  it 'has valid factory' do
    expect(FactoryGirl.create(:user)).to be_valid
  end
  it 'is invalid without email' do
    expect(FactoryGirl.build(:user, email: nil)).to_not be_valid
  end
  it 'is invalid without password' do
    expect(FactoryGirl.build(:user, password: nil)).to_not  be_valid
  end

  it 'is invalid without username, name' do
    expect(FactoryGirl.build(:user, username: nil, name: nil)).to_not be_valid
  end
end

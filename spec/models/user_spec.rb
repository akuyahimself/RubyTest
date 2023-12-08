# frozen_string_literal: true
require 'rails_helper'

RSpec.describe User, type: :model do
  it "user is valid with valid attributes" do
    user = build(:user)
    expect(user).to be_valid
  end

  it "user is not valid with email" do
    user = build(:user, email: nil)
    expect(user).to_not be_valid
  end

  it "user is not valid with nickname" do
    user = build(:user, nickname: nil)
    expect(user).to_not be_valid
  end

  it 'is not valid with a duplicate email' do
    user = create(:user)
    duplicate_user = build(:user, email: user.email)
    expect(duplicate_user).to_not be_valid
  end

end
require 'rails_helper'

describe User do

  it "is valid with an email and password"  do
     expect(FactoryGirl.build(:user, email: "test@test.com", password: "password")).to be_valid
  end

  it "is invalid without an email" do
    expect{FactoryGirl.create(:user,  password: "password")}.to raise_exception
  end

  it "is invalid without a password" do
    expect{FactoryGirl.create(:user,  email: "test@email.com")}.to raise_exception
  end

  it "is invalid with a duplicate email address" do
    expect{
      FactoryGirl.create_list(:user, 2, :is_valid)
    }.to raise_exception(ActiveRecord::RecordInvalid)
  end

end

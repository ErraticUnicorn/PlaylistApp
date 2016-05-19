require 'rails_helper'


RSpec.describe UsersController do
  include Devise::TestHelpers

  describe "DELETE destroy" do

    before (:each) do
      @user = FactoryGirl.create(:user, :is_valid_and_unique)
      @admin_user = FactoryGirl.create(:user, :is_valid_and_unique, :is_admin)


    end

    it "will destroy record if current_user is an admin user" do
        sign_in @admin_user
      expect{
        delete :destroy, :id => @admin_user, :user => @user
      }.to change(User, :count).by(-1)
    end

    it "will not destroy record if current_user is not an admin user" do
        sign_in @user
      expect{
        delete :destroy, :id => @user, :user => @admin_user
      }.to raise_exception(Pundit::NotAuthorizedError)
    end

  end

end

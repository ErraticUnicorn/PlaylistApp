
class UserPolicy < ApplicationPolicy
  attr_reader :user

  def destroy?
    user.admin?
  end
end

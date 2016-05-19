class UserPolicy
  attr_reade :user

  def initialize(user)
    @user = user
  end

  def destroy
    user.admin?
  end
end

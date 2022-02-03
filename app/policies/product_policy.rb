class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
        scope.all
        # For a multi-tenant SaaS app, you may want to use:
        # scope.where(user: user)
    end
  end

  def create?
    return true
  end
  def update?
    record.user_id == user.id
    # - record: the product passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    record.user_id == user.id
  end
end

class MoviePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    user_is_owner_or_admin?
  end

  def destroy?
    user_is_owner_or_admin?
  end

  def top?
    true
  end

  private

  def user_is_owner_or_admin?
    # owner   == current_user
    record.user == user || user.admin?
  end
end

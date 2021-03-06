class RatingPolicy < ApplicationPolicy
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
    true if current_user == user || current_user.admin == true
  end

  def destroy?
    true if current_user == user || current_user.admin == true
  end
end

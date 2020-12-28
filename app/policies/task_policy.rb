class TaskPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    user.boards.include?(record.board)
  end

  def create?
    new?
  end

  def move?
    true
  end
end

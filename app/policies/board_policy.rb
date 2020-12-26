class BoardPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.boards
    end
  end
end

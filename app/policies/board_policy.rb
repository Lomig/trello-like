# frozen_string_literal: true

class BoardPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.boards
    end
  end

  def show?
    record.members.include?(user)
  end
end

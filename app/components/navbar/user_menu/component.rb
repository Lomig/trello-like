# frozen_string_literal: true

class Navbar::UserMenu::Component < ApplicationComponent
  def initialize(user:)
    @user = user
  end

  def render?
    @user.present?
  end
end

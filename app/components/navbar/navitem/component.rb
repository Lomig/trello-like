# frozen_string_literal: true

class Navbar::Navitem::Component < ApplicationComponent
  def initialize(name:, url:)
    @name = name
    @url = url
  end
end

# frozen_string_literal: true

class Navbar::Navitem::Component < ApplicationComponent
  def initialize(name:, url:, method: :get, highlight: true)
    @name = name
    @url = url
    @method = method
    @highlight = highlight
  end
end

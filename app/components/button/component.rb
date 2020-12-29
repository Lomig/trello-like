# frozen_string_literal: true

class Button::Component < ApplicationComponent
  def initialize(text:, url:)
    @text = text
    @url = url
  end
end

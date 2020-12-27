# frozen_string_literal: true

class ApplicationComponent < ViewComponent::Base
  delegate :component, to: :helpers
end

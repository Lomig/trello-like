# frozen_string_literal: true

class ApplicationComponent < ViewComponent::Base
  delegate :component, to: :helpers
  delegate :turbo_frame_tag, to: :helpers
end

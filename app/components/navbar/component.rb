# frozen_string_literal: true

class Navbar::Component < ApplicationComponent
  include ViewComponent::SlotableV2

  renders_one :logo
  renders_many :items, Navbar::Navitem::Component
end

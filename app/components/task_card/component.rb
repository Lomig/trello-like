# frozen_string_literal: true

class TaskCard::Component < ApplicationComponent
  def initialize(task:)
    super
    @task = task
  end
end

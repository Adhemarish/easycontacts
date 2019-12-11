class AlertsMailJob < ApplicationJob
  queue_as :default

  def perform
    AlertsMailService.new.call
  end
end

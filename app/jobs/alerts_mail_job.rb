require 'sidekiq-scheduler'

class AlertsMailJob < ApplicationJob
  include Sidekiq::Worker
  queue_as :default

  def perform
    AlertsMailService.new.call
  end
end

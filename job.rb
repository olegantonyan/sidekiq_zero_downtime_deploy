require 'sidekiq'

class Job
  include Sidekiq::Worker

  def perform(wait_seconds = 100)
    puts '**** starting'
    sleep wait_seconds
    puts '**** finishing'
  end
end

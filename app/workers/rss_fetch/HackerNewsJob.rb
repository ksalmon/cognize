
class RssFetch::HackerNewsJob
  include Sidekiq::Worker
  sidekiq_options queue: 'low'

  def perform
    puts "Hey Kyle!!!"
  end
end

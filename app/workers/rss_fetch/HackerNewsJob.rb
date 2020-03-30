
class RssFetch::HackerNewsJob
  include Sidekiq::Worker
  sidekiq_options queue: 'low'

  def perform
    puts "Fire the Sidekiq Job For Hacker News"
  end
end

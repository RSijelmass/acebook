class Source < ApplicationRecord
  def self.in(message)
    urls_in(message).map { |url| find_by(url: url) }
  end

  private

  def self.urls_in(message)
    pluck(:url).select { |url| message.include?(url) }
  end
end

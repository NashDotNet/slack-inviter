module ApplicationHelper
  def title
    @title ||= (ENV["TITLE"] || "SlackInviter")
  end

  def top_subtitle
    @toptitle||= (ENV["TOP_SUBTITLE"] || "Come make some friends, share links, meet a lunch buddy.")
  end

  def slack_domain
    @sd ||= (ENV["SLACK_SUBDOMAIN"] || raise("missing SLACK_SUBDOMAIN"))
  end

  def background_image
    @bg ||= (ENV["BACKGROUND_IMAGE"] || "http://i.imgur.com/vDADTWP.jpg")
  end
end

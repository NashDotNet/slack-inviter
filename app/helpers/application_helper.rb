module ApplicationHelper
  def title
    ENV["TITLE"] || "SlackInviter"
  end

  def slack_domain
    ENV["SLACK_SUBDOMAIN"] || raise("missing SLACK_SUBDOMAIN")
  end
end

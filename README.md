# Slack Inviter

The application to bootstrap your slack community

## Usage

clone
bundle
rename .env file

`mv .env.example .env`

edit variables

```bash

SIDEKIQ_USERNAME=user
SIDEKIQ_PASSWORD=password
SLACK_TOKEN=yourslackapitoken
SLACK_SUBDOMAIN=yourslacksubdomain
TITLE="Title of your slack community?"
TOP_SUBTITLE="Come make some friends, share links, meet a lunch buddy."
BACKGROUND_IMAGE="http://i.imgur.com/vDADTWP.jpg"

```

start the server

`rails s`

### POST /invitations

To enqueue an invitation request:

```bash
curl -X POST \
  -H "Content-Type: application/json" \
  -d "{\"email\":\"andy@example.com\"}" \
  http://localhost:3000/invitations
```

The route is meant to be used by a JavaScript client. You can whitelist CORS origins in `config/application.rb`.

## Development

### Prerequisites

* PostgreSQL: `brew install postgresql`
* Redis: `brew install redis`

### Required Configuration

Configuration items are stored in environment variables.

```bash

SIDEKIQ_USERNAME=user
SIDEKIQ_PASSWORD=password
SLACK_TOKEN=yourslackapitoken (an API token for an administrator of the organization from: https://api.slack.com/web)
SLACK_SUBDOMAIN= e.g., tech404 for tech404.slack.com (signup for slack)
TITLE="Title of your slack community?"
TOP_SUBTITLE="Come make some friends, share links, meet a lunch buddy."
BACKGROUND_IMAGE="http://i.imgur.com/vDADTWP.jpg"

```

# COGNIZE (BETA)
App will fetch from RSS feeds that have proper middleware integrations and users will be able to search through a variety of articles in which they will be able to save and subscribe.

Using the Google SQL proxy for dev.
#### Start the proxy for dev
You will need to login via gcloud and have proper SQL admin access or you will need to get a json cred file from an existing admin.
`./cloud_sql_proxy -instances=cognize:us-east1:cognize-dev=tcp:5432`

#### DB access 
Will need the username and password once you are connected via proxy
psql "host=127.0.0.1 sslmode=disable dbname=development"


#### Start Rails, Redis and Sidekiq
`rails s && redis-server && bundle exec sidekiq`

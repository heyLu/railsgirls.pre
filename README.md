# The Rails Girls App

## Run it

    $ bundle install --path vendor/bundle
    $ rails server

## Steps

1. `rails new $AWESOME_APP`
    - generates the basic rails template
        * `app`: application code (MVC, assets (HTML, JavaScript), utils)
            - `app/views`: code that generates the html of the app
            - `app/models`: data model, validation, no logic
            - `app/controllers`: application logic
        * `config`: exactly what you think (application, db)
            - `config/database.yml`: database config
            - `config/routes.rb`: routes urls to controllers (e.g. /login to LoginController)
            - `config/application.rb`: application config
        * `test`: also exactly what you think
        * `public`: some templates (error pages, favicon, robots.txt)

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
    - `rails server`: runs the application (see it at <http://localhost:3000>)
        * for now it only shows that rails works
        * later on will serve your application
2. create idea scaffold
    - `rails generate scaffold idea name:string description:text picture:string`
        * this generates the scaffolding for a model named `idea` with a
            `name`, description` and a `picture`
            - `app/models/idea.rb`, `db/migrate`, `app/views`
        * `idea` -> `app/controllers/ideas_controller.rb`, `app/views/ideas`
            - `idea` model = one `idea`, controller -> many `idea`s
3. design
    - `app/views/layouts/application.html.erb`: skeleton for individual pages
        * all the `idea` pages use this (list, show, edit)
        * can be used for application-wide navigation, footer
    - `app/assets/stylesheets/application.css`: application-wide stylesheet
    - HTML: structure, CSS: style/layout; CSS can [restyle page completely][zengarden]
4. adding picture uploads
    - `gem 'carrierwave'`: library that handles image uploads
        * `bundle` reads the `Gemfile` and fetches dependencies
    - `rails generate uploader Picture`: generates code for uploading
        images (from the `carrierwave` dependency)
    - need to restart `rails server` now
    - `mount_uploader :picture, PictureUploader`: sets up the `picture`
        field of `idea` to use the `PictureUploader`
    - `<%= f.file_field :picture %>`: uses a file uploader for the picture
5. finetune the routes
    - `config/routes.rb`: maps URLs to controllers, options for routes
        (http methods, parameters)
    - view routes with `rake routes`

## Notes

* which level of detail? (would like to give opportunity to learn more,
    go further etc)
* css basics/learning (alistapart, selfhtml)
* basic interactivity
* guide first steps, make the next ones possible

[zengarden]: http://www.csszengarden.com/

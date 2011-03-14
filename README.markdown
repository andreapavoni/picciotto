# Picciotto
A minimalistic website framework based on [Padrino](http://www.padrinorb.com/).

One step beyond to Sinatra, but far more lighter than Rails, Picciotto uses some Padrino's components to help you build hybrid static/dinamic
websites. It's mainly composed by several opinionated tools used in everyday web development.

# Features
* [Haml](http://haml-lang.com/) templating
* [Sass](http://sass-lang.com/) stylesheets
* [HTML5 Boilerplate](http://html5boilerplate.com/) layout (mostly ripped from [compass-html5-boilerplate](http://github.com/sporkd/compass-html5-boilerplate) and [compass](http://compass-style.org))
* [Rspec](http://rspec.info) tests
* semi-static pages (renders static haml files)

# Installation
Just clone this repo:

`git clone git://github.com/apeacox/picciotto.git`

# Customization
## Add semi-static pages
Picciotto spots support for *semi-static* pages out of the box, just add your HAML files under

`app/views/main/static/`

So, if you put *yourpage.html.haml*, it will be rendered as:

`http://example.com/yourpage`

**Note:** You can't put files under *main/static*'s subdirectories (ex: *app/views/main/static/some_subdir/yourfile.haml*), or you'll get a *404* page.

## Database support
By default, Picciotto has no database support because:

* Maybe you don't need it *now*, so it's better start with a bare minimum codebase
* If you need a db, then choose what really fits your needs, ORM included

## Other tools/gems

Edit *Gemfile* and add more dependencies to your needs (ex. *padrino-mailer*, database support, cucumber, etc...)

## Go further
Read [Padrino's documentation](http://www.padrinorb.com/guides) if you want to extend Picciotto to your needs.

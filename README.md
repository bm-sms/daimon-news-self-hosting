# daimon news self hosting

## Setup

``` sh
$ git clone git@github.com:bm-sms/daimon-news-self-hosting.git
$ cd daimon-news-self-hosting
$ bin/setup
```

## Customize

### Style

1. Put your css to `custom/stylesheets` diretory.
2. Replace service logo `custom/logo.png`.

And commit your files.

``` sh
$ git add -f app/assets
$ git commit -m 'Update css'
```

### Setting

Edit config: `config/application.yml`
And commit your file:

``` sh
$ git add -f config/application.yml
$ git commit -m 'Update config'
```

## Deploy

For Heroku:
``` sh
$ heroku create
$ git push heroku master
```

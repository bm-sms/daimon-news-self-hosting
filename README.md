# daimon news self hosting

## Setup

``` sh
$ git clone git@github.com:bm-sms/daimon-news-self-hosting.git
$ cd daimon-news-self-hosting
$ bin/setup
```

## Customize

Put your css to `app/assets/stylesheets/custom` diretory.

And please commit your files.

``` sh
$ git add -f app/assets/stylesheets/custom
$ git commit -m 'Update css'
```

## Deploy

For Heroku:
``` sh
$ heroku create
$ git push heroku master
```

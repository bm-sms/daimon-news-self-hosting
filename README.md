# daimon news self hosting

## Setup

``` sh
$ git clone --origin upstream git@github.com:bm-sms/daimon-news-self-hosting.git:upstream
$ cd daimon-news-self-hosting
```

Copy and setup database config `config/database.yml` from `config/database.example.yml`.

``` sh
$ bin/setup
```

## Customize

### Setting

Edit application config: `config/application.yml`
And commit your file:

``` sh
$ git add -f config/application.yml
$ git commit -m 'Update config'
```

### Style

1. Put your css to `custom/stylesheets` diretory.
2. Replace service logo `custom/images/logo.png`.

And commit your files.

``` sh
$ git add -f app/assets/{stylesheets,images}/custom
$ git commit -m 'Update css'
```

### Setup repository for customized style

``` sh
$ git remote add origin <your repository URL>
$ git push -u origin master
```

## Deploy

For Heroku:
``` sh
$ heroku create
$ git push heroku master
```

## Write a post

To visit `/admin`.

## Update

To follow update on original branch.
Run the following script.

``` sh
$ bin/update
```

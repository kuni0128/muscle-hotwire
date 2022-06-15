# How to setup
```
$ docker-compose build --force-rm --no-cache

$ docker-compose run app bash

# rails -v
# bundle -v
# rails new . --javascript --css=bootstrap --skip-jbuilder --skip-action-mailbox --skip-action-mailer --skip-test --skip-active-storage --skip-action-text --skip-bundle
# bundle install --path=vendor/bundle
# bin/rails javascript:install:esbuild        # Auto run `yarn add esbuild`
# bin/rails turbo:install stimulus:install    # Auto run `yarn add @hotwired/stimulus`
# bin/rails css:install:bootstrap             # Auto run `yarn add bootstrap`
```

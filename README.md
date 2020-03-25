# codevid19.com

This uses Jeykll with Github Pages plugins, so that content can be quickly published and served as a Github Page. To build locally you'll need to install Ruby 2.1+.

With Ruby 2.1+ installed, you'll want to install dependencies using bundler.

    bundle install

From this point you can build and serve the site using:

    bundle exec jekyll serve -H 0.0.0.0 -p 4000

This will serve the site at:

    http://localhost:4000

## Contributing

Fork and work in your own private branch. We recommend fetching and rebasing often from `upstream`. Submit a PR.

## SASS & Jekyll Interaction

Traditional SASS users may not be used to how Jekyll requires things to be laid out in your project. In short, SASS files we want Jekyll to process reside in the destination folder that the `.css` file should live (i.e. `assets/css/main.scss` and `assets/css/noscript.scss`). Additionally, we have to add some empty Liquid markup (the 2 lines of 3 dashes):

```scss
---
---

@import "libs/vars";
@import "libs/functions";
...
```

**Do not remove this markup**, otherwise Jekyll will not process the file into a `.css` file for the `_site/assets/css` folder. Yeah your linters may complain but it's a small price to pay.

## Style Guide

This project uses [Prettier](https://prettier.io/) to enforce a consistent code style. If you are doing work in HTML/SASS/JS, ensure you have it installed and it's highly-recommended you have it automatically run before submitting your PRs.

Additionally, ensure line-endings pushed to `origin` remain `LF` and not forced to `CRLF`. For users on Windows, make sure your [core.autocrlf](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration#_code_core_autocrlf_code) is configured properly. For Linux/macOS users, ensure you are not forcing line endings to be `CRLF`.

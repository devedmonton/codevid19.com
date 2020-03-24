# codevid19.com

This uses Jeykll with Github Pages plugins, so that content can be quickly published and served as a Github Page. To build locally you'll need to install Ruby 2.1+.

With Ruby 2.1+ installed, you'll want to install dependencies using bundler.

    bundle install

From this point you can build and serve the site using:

    bundle exec jekyll serve -H 0.0.0.0 -p 4000

This will serve the site at:

    http://localhost:4000
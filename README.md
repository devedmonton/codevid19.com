# codevid19.com

## Installation

We use Jeykll with Github Pages plugins so that content can be quickly published and served as a Github Page. To build locally, you'll need to install Ruby 2.1+.

With Ruby 2.1+ installed, you'll want to install dependencies using bundler.

    bundle install

From this point you can build and serve the site using:

    ./serve.sh

This will serve the site at:

    http://localhost:4000

### VSCode Remote - Containers

This project is configured to work with [VSCode](https://code.visualstudio.com/)'s [Remote - Containers](https://code.visualstudio.com/docs/remote/containers). Be sure to follow VSCode's [instructions](https://code.visualstudio.com/docs/remote/containers#_installation) if you are setting this up for the first time.

Our remote container includes a few pre-installed VS Code Extensions:

- [Vim](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)
- [Ruby](https://marketplace.visualstudio.com/items?itemName=rebornix.Ruby)
- [VSCode Ruby](https://marketplace.visualstudio.com/items?itemName=wingrunr21.vscode-ruby)
- [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)

By default, we have set the remote container to:

- Use Prettier as the **default formatter**
- Format your files **on save**
- Trim trailing whitespace from all files **except Markdown**

This is the easiest way to ensure your contributions meet our [style guide](#style-guide). Check to make sure any User-level overrides do not impact your contributions.

## Contributing

**tl;dr:** Fork and work in your own private branch. We recommend fetching and rebasing often from `upstream`. Submit a PR.

For more details, check out [CONTRIBUTING.md](CONTRIBUTING.md).

## Style Guide

This project uses [Prettier](https://prettier.io/) to enforce a consistent code style. Ensure you have it installed and integrated with your workflow if you are doing work in HTML, SASS, JS, and/or Markdown. It's highly-recommended you have it automatically run before submitting your PRs.

Additionally, ensure line-endings pushed to `origin` remain `LF` and not forced to `CRLF`. For users on Windows, make sure your [core.autocrlf](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration#_code_core_autocrlf_code) is configured properly. For Linux/macOS users, ensure you are not forcing line endings to be `CRLF`.

---

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

To compile your SASS, `./serve.sh` should be doing that for you already. Because of Jekyll, we do not recommend using `sass` CLI on its own.

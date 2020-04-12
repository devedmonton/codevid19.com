#!/bin/bash
bundle exec jekyll serve -H 0.0.0.0 -p 4000 2>&1 | grep -E -v 'deprecated|GitHub Metadata'

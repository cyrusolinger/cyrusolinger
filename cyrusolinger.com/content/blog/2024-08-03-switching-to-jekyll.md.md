---
title: "Switching to Jekyll"
date: 2024-08-03
categories: workflow
---

After initially deploying my site with Hugo, I decided to switch to Jekyll for better integration with GitHub Pages and more robust plugin support. This change, however, came with its own set of challenges.

The first hurdle was setting up the new workflow. I created a new branch for the Jekyll setup to avoid disrupting the live site. After configuring the `_config.yml` file and installing the necessary gems, I ran into encoding issues with my Markdown files. This required careful troubleshooting and converting files to UTF-8 using VSCode.

Debugging logs became a regular part of my day as I worked through build failures and dependency issues. Each error message was a clue that led me closer to a successful deployment. I also learned the importance of clear commit messages and detailed pull requests to track changes and ensure smooth merging.

The final steps involved updating the Netlify build settings to use `bundle exec jekyll build` and setting the publish directory to `_site`. After pushing the changes to the main branch and triggering a build, I finally saw my Jekyll-powered site live.

This experience has been a rollercoaster ride, filled with moments of frustration and triumph. The transition to Jekyll has not only improved my site but also enhanced my skills in managing workflows, debugging, and using version control effectively. I'm looking forward to the continued evolution of cyrusolinger.com!
# Content Language Switching for Discourse

A plugin for the [Discourse](https://www.discourse.org/) forum software. Allows to display language specific topics in (for now) English and German. Uses user groups as sort of a hack.

# Configuration

TODO

<!-- add user documentation and maybe screenshots -->

# Development

## Run Discourse Locally

- [Beginners Guide to Install Discourse on Mac OS X (macOS) for Development](https://meta.discourse.org/t/beginners-guide-to-install-discourse-on-mac-os-x-macos-for-development/15772)
- [Beginners Guide to Install Discourse on Windows 10 for Development](https://meta.discourse.org/t/beginners-guide-to-install-discourse-on-windows-10-for-development/75149)
- [Beginners Guide to Install Discourse on Ubuntu for Development](https://meta.discourse.org/t/beginners-guide-to-install-discourse-on-ubuntu-for-development/14727)

## Install the Plugin

Clone this repository and create a symlink in the `plugins` directory:

```
$ cd ~/mycode/discourse/plugins
$ ln -s ~/mycode/discourse-switch-content-language .
```

Note: Replace `~/mycode/` with your local code directory.

Restart your Rails server.

More information [here](https://meta.discourse.org/t/install-a-plugin/19157?source_topic_id=34829).

## On Plugin Development

There's some general information on plugin development for Discourse:

- [Beginner’s Guide to Creating Discourse Plugins - Part 1](https://meta.discourse.org/t/beginners-guide-to-creating-discourse-plugins-part-1/30515)
- [Beginner’s Guide to Creating Discourse Plugins Part 2: Plugin Outlets](https://meta.discourse.org/t/beginners-guide-to-creating-discourse-plugins-part-2-plugin-outlets/31001)
- [Beginner’s Guide to Creating Discourse Plugins Part 3: Custom Settings](https://meta.discourse.org/t/beginners-guide-to-creating-discourse-plugins-part-3-custom-settings/31115)
- [Beginner’s Guide to Creating Discourse Plugins Part 4: Git Setup](https://meta.discourse.org/t/beginners-guide-to-creating-discourse-plugins-part-4-git-setup/31272)
- [Beginner’s Guide to Creating Discourse Plugins Part 5: Admin Interfaces](https://meta.discourse.org/t/beginners-guide-to-creating-discourse-plugins-part-5-admin-interfaces/31761)
- [Beginner’s Guide to Creating Discourse Plugins Part 6: Acceptance Tests](https://meta.discourse.org/t/beginner-s-guide-to-creating-discourse-plugins-part-6-acceptance-tests/32619)
- [How to start building stuff for Discourse if you’re newbie (like myself)](https://meta.discourse.org/t/how-to-start-building-stuff-for-discourse-if-youre-newbie-like-myself/45954)

## Change the Code

Edit the code and refresh the page. If changes aren't picked up, run…

```
rm -rf tmp/;bundle exec rails server
```

…within your Discourse directory.


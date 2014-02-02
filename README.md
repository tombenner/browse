Browse
======
Open Mechanize pages in a (human-readable) browser

Description
-----------

Browse lets you open Mechanize pages in a web browser (like Chrome). This is useful for debugging: when you're using Mechanize and want to examine a page, instead of having to view the page's source in a console, Browse lets you open the page in Chrome, fully rendered.

```ruby
agent = Mechanize.new
page = agent.get('https://www.google.com/')
page.browse # Chrome opens, showing the page!
```

Installation
------------

Add Browse to your Gemfile:

```ruby
gem 'browse'
```

Notes
-----

Browse doesn't open the URL (e.g. `https://www.google.com/`) in Chrome, as that wouldn't show what is currently going on in the Mechanize session. Instead, it opens a locally-saved HTML page that has `page.body` as its source.

Browse is currently tested on OS X with Google Chrome. If you'd like to add support for any other OS and/or browser, please feel free to open a PR.

License
-------

Browse is released under the MIT License. Please see the MIT-LICENSE file for details.

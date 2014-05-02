# BetterLogs [![Build Status](https://travis-ci.org/techthumb/better_logs.svg?branch=v0.1.0)](https://travis-ci.org/techthumb/better_logs) [![Gem Version](https://badge.fury.io/rb/better_logs.svg)](http://badge.fury.io/rb/better_logs) [![Code Climate](https://codeclimate.com/repos/535a5dcae30ba03fdc00efe2/badges/1196b8f5d38c79f87546/gpa.png)](https://codeclimate.com/repos/535a5dcae30ba03fdc00efe2/feed) [![Code Climate](https://codeclimate.com/repos/535a5dcae30ba03fdc00efe2/badges/1196b8f5d38c79f87546/coverage.png)](https://codeclimate.com/repos/535a5dcae30ba03fdc00efe2/feed)

Better Logs adds an additional two log lines for all HTTP requests.
Currently, it logs data in key=value pairs to allow for Splunk indexing.

```
format=html method=GET path=/ status=200  view_runtime=45.67 db_runtime=23.45 controller=rails/welcome action=index
```
```
remote_ip=127.0.0.1 browser_name=Chrome browser_platform=Macintosh browser_version=34.0.1847.131
```

## Installation
Add this to your Gemfile
```ruby
gem 'better_logs'
```

## Get in touch!
If you're using ```better_logs```, I'd love to hear from you. Drop me a line and tell me what you think at: ```kunal+better_logs@techthumb.in```

## Contributing
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

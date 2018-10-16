# Authentication Appom Appium
[![License](http://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat
)](http://mit-license.org)
[![Build Status](https://travis-ci.org/hoangtaiki/authentication-appom-appium.svg)](https://travis-ci.org/hoangtaiki/authentication-appom-appium)

`Authentication Appom Appium` is automated testing project for [`Authentication iOS project`](https://github.com/hoangtaiki/authentication-rxswift). 
`Authentication Appom Appium` is written by Appium, Selenium, Cucumber, Appom.

## Requirements
- Ruby 2.4.4 or later
- Appium 1.9.0 or later
- Cucumber 3.1.2 or later
- NodeJS & npm

## Run Project

Start `appium` server
```
appium
```

Then create new consult window. 
```ruby
cd path/to/project
bundle install
```
Start automated testing by start cucumber
```
bundle exec cucumber
```

And see test results at console.
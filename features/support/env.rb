require 'appium_lib'
require 'appom'

appium_lib_options = {
  server_url: 'http://0.0.0.0:4723/wd/hub'
}

ios_caps = {
  automationName: 'XCUITest',
  platformName: 'iOS',
  platformVersion: '11.4',
  deviceName: 'iPhone 7',
  app: File.expand_path('../app/Authentication.app', __dir__),
  newCommandTimeout: 3000,
  safariIgnoreFraudWarning: true,
  noReset: true,
  fullReset: false,
  wdaLocalPort: 8200
}

Appom.register_driver do
  options = {
    appium_lib: appium_lib_options,
    caps: ios_caps
  }
  Appium::Driver.new(options, false)
end
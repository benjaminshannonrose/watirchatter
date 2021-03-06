################################################################################
# Copyright 2018 spriteCloud B.V. All rights reserved.
# Generated by LapisLazuli, version 2.0.1
# Author: "Ben Rose" <benjaminshannonrose@gmail.com>
require 'lapis_lazuli'
require 'lapis_lazuli/cucumber'

LapisLazuli::WorldModule::Config.config_file = "config/config.yml"
World(LapisLazuli)

# Do something when LapisLazuli is started (This is before the browser is opened)
LapisLazuli.Start do
  #If BROWSER is NIL, Lapis Lazuli will default to chrome
  if !ENV['BROWSER'] || ENV['BROWSER'] == 'chrome'

    # Get Selenium to create a profile object
    require 'selenium-webdriver'
    profile = Selenium::WebDriver::Chrome::Profile.new

    # These settings prevent a warning after authenticating via URL
    # For example user:pass@https://website.com/
    profile['network.http.phishy-userpass-length'] = 255
    profile['network.http.use-cache'] = false

    # Start the browser with these settings
    browser :chrome, :profile => profile

  end
end
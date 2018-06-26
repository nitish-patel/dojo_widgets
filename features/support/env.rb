# This line adds our lib directory to the LOAD_PATH which makes it possible for us to simply require files found in that directory structure.
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', '..', 'lib'))

# These gems are required to write Cucumber tests.
require 'rspec'
require 'dojo_widgets'
require 'page-object'
require 'watir-webdriver'
require 'fig_newton'

# Registering PageFactory with Cucumber World so we can call its' methods in the tests we write.
World(PageObject::PageFactory)

# The Before and After create and close the browser.
Before do
  @browser = Watir::Browser.new :firefox
end

After do
  @browser.close
end
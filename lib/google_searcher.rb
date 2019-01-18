require 'watir'
require 'selenium-webdriver'
def google_searcher
  browser = Watir::Browser.new(:firefox)
  a = ARGV
  b = a.join('+')
  browser.goto "https://www.google.com/search?q=#{b}"
end
google_searcher

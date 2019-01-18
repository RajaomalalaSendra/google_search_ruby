require 'watir'
require 'selenium-webdriver'
def google_searcher
  browser = Watir::Browser.new(:firefox)
  a = ARGV
  b = a.join('+')
  if b.empty?
  abort("vous devrez entrer ce que vous voulez réelement recherché par exemple: 'search madagascar beatiful nature")
  else
  browser.goto "https://www.google.com/search?q=#{b}"
  end
end
google_searcher

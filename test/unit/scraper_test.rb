require 'test_helper'

class ScraperTest < ActiveSupport::TestCase
  test "scrape" do
  	scraper = Scraper.findByName("Kaggle")
  	
  	challenge = scraper.scrape!
  	assert_equal(challenge.title, "GigaOM WordPress Challenge, Powered by Splunk")
  end
end

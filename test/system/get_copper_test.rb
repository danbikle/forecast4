# get_copper_test.rb

# Demo:
# rails test test/system/get_copper_test.rb

require "application_system_test_case"

class GetCopperTest < ApplicationSystemTestCase
  test "visiting investing.com" do
    Capybara.run_server = false
    Capybara.app_host   = 'https://www.investing.com'
    visit '/'
    assert true
    #    assert_selector "h1", text: "investing.com"
  end
end

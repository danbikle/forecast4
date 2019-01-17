# get_copper_test.rb

# Demo:
# rails test test/system/get_copper_test.rb

require "application_system_test_case"

class GetCopperTest < ApplicationSystemTestCase
  test "visiting investing.com" do
    Capybara.run_server = false
    Capybara.app_host   = 'https://www.investing.com'
    sleep 2
    visit '/'
    sleep 2
    # ScreenshotHelper.take_screenshot
    take_screenshot
    sleep 2
    # Kernel.system
    system 'mv tmp/screenshots/test_visiting_investing.com.png /tmp/img1.png'
    sleep 2
    visit '/commodities/'
    sleep 2
    take_screenshot
    sleep 2
    system 'mv tmp/screenshots/test_visiting_investing.com.png /tmp/img2.png'
    sleep 2
    assert true
    #    assert_selector "h1", text: "investing.com"
  end
end

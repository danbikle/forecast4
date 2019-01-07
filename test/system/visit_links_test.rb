# visit_links_test.rb

# Demo:
# rails test:system

require "application_system_test_case"

class VisitLinksTest < ApplicationSystemTestCase
  test "visiting links" do
    visit '/'
 
    assert_selector "h1", text: "forecast4.us"
  end
end

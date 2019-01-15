require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get blog" do
    get pages_blog_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get forecasts" do
    get pages_forecasts_url
    assert_response :success
  end

  test "should get backtests" do
    get pages_backtests_url
    assert_response :success
  end

  test "should get software" do
    get pages_software_url
    assert_response :success
  end

  test "should get training" do
    get pages_training_url
    assert_response :success
  end

  test "should get newsletter" do
    get pages_newsletter_url
    assert_response :success
  end

end

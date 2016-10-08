require 'test_helper'

class RandomControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get random_home_url
    assert_response :success
  end

  test "should get about" do
    get random_about_url
    assert_response :success
  end

end

require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get codes" do
    get page_codes_url
    assert_response :success
  end

end

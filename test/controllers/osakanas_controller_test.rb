require 'test_helper'

class OsakanasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get osakanas_index_url
    assert_response :success
  end

end

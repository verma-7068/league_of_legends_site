require 'test_helper'

class FreeToPlayControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get free_to_play_index_url
    assert_response :success
  end

end

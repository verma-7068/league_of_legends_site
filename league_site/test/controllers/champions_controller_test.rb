require 'test_helper'

class ChampionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get champions_index_url
    assert_response :success
  end

end

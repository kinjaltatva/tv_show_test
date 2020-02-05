require 'test_helper'

class TvshowsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tvshows_index_url
    assert_response :success
  end

end

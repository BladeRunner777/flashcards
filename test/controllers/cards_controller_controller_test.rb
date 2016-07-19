require 'test_helper'

class CardsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cards_controller_index_url
    assert_response :success
  end

end

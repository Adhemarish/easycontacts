require 'test_helper'

class TagsControllerTest < ActionDispatch::IntegrationTest
  test "should get label" do
    get tags_label_url
    assert_response :success
  end

end

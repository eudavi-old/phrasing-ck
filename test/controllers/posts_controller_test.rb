require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get descricao" do
    get posts_descricao_url
    assert_response :success
  end

end

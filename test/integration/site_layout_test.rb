require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
    test "layout links" do
    get root_path
    assert_template 'pages/home'
    assert_select "a[href=?]", users_path
    assert_select "a[href=?]", posts_path
  end
end

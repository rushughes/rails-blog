require 'test_helper'

class CreateUsersTest < ActionDispatch::IntegrationTest

  test "get new user form and create user" do
    get signup_path
    assert_template 'users/new'
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { username: "rustest", email: "rustest@example.org", password: "password" } }
      follow_redirect!
    end
    assert_template 'users/show'
    assert_match "rustest", response.body
  end

  test "invalid users result in failure" do
    get signup_path
    assert_template 'users/new'
    assert_no_difference 'User.count' do
      post users_path, params: { user: { username: "", email: "", password: "" } }
      post users_path, params: { user: { username: "rustest", email: "rustest", password: "password" } }
    end
    assert_template 'users/new'
    assert_select 'h2.panel-title'
    assert_select 'div.panel-body'
  end

end

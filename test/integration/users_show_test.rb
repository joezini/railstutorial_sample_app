require 'test_helper'

class UsersShowTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:archer)
  end

  test "do not show un-activated user" do
    @user.update_attribute(:activated, false)
    get user_path(@user)
    assert_redirected_to root_url
  end

end

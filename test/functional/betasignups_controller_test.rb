require 'test_helper'

class BetasignupsControllerTest < ActionController::TestCase
  setup do
    @betasignup = betasignups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:betasignups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create betasignup" do
    assert_difference('Betasignup.count') do
      post :create, betasignup: { email: @betasignup.email }
    end

    assert_redirected_to betasignup_path(assigns(:betasignup))
  end

  test "should show betasignup" do
    get :show, id: @betasignup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @betasignup
    assert_response :success
  end

  test "should update betasignup" do
    put :update, id: @betasignup, betasignup: { email: @betasignup.email }
    assert_redirected_to betasignup_path(assigns(:betasignup))
  end

  test "should destroy betasignup" do
    assert_difference('Betasignup.count', -1) do
      delete :destroy, id: @betasignup
    end

    assert_redirected_to betasignups_path
  end
end

require 'test_helper'

class Admin::FathersControllerTest < ActionController::TestCase
  setup do
    @admin_father = admin_fathers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_fathers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_father" do
    assert_difference('Admin::Father.count') do
      post :create, admin_father: { name: @admin_father.name }
    end

    assert_redirected_to admin_father_path(assigns(:admin_father))
  end

  test "should show admin_father" do
    get :show, id: @admin_father
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_father
    assert_response :success
  end

  test "should update admin_father" do
    patch :update, id: @admin_father, admin_father: { name: @admin_father.name }
    assert_redirected_to admin_father_path(assigns(:admin_father))
  end

  test "should destroy admin_father" do
    assert_difference('Admin::Father.count', -1) do
      delete :destroy, id: @admin_father
    end

    assert_redirected_to admin_fathers_path
  end
end

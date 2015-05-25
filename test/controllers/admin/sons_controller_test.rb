require 'test_helper'

class Admin::SonsControllerTest < ActionController::TestCase
  setup do
    @admin_son = admin_sons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_sons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_son" do
    assert_difference('Admin::Son.count') do
      post :create, admin_son: { admin_father_id: @admin_son.admin_father_id, name: @admin_son.name }
    end

    assert_redirected_to admin_son_path(assigns(:admin_son))
  end

  test "should show admin_son" do
    get :show, id: @admin_son
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_son
    assert_response :success
  end

  test "should update admin_son" do
    patch :update, id: @admin_son, admin_son: { admin_father_id: @admin_son.admin_father_id, name: @admin_son.name }
    assert_redirected_to admin_son_path(assigns(:admin_son))
  end

  test "should destroy admin_son" do
    assert_difference('Admin::Son.count', -1) do
      delete :destroy, id: @admin_son
    end

    assert_redirected_to admin_sons_path
  end
end

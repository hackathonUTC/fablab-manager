require 'test_helper'

class SellableTypesControllerTest < ActionController::TestCase
  setup do
    @sellable_type = sellable_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sellable_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sellable_type" do
    assert_difference('SellableType.count') do
      post :create, sellable_type: { name: @sellable_type.name }
    end

    assert_redirected_to sellable_type_path(assigns(:sellable_type))
  end

  test "should show sellable_type" do
    get :show, id: @sellable_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sellable_type
    assert_response :success
  end

  test "should update sellable_type" do
    patch :update, id: @sellable_type, sellable_type: { name: @sellable_type.name }
    assert_redirected_to sellable_type_path(assigns(:sellable_type))
  end

  test "should destroy sellable_type" do
    assert_difference('SellableType.count', -1) do
      delete :destroy, id: @sellable_type
    end

    assert_redirected_to sellable_types_path
  end
end

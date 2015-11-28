require 'test_helper'

class SellablesControllerTest < ActionController::TestCase
  setup do
    @sellable = sellables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sellables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sellable" do
    assert_difference('Sellable.count') do
      post :create, sellable: { description: @sellable.description, name: @sellable.name, price_per_unit_CI: @sellable.price_per_unit_CI, price_per_unit_c: @sellable.price_per_unit_c, price_per_unit_nc: @sellable.price_per_unit_nc, price_per_unit_permanencier: @sellable.price_per_unit_permanencier, sellable_type_id: @sellable.sellable_type_id, stock: @sellable.stock, unit: @sellable.unit }
    end

    assert_redirected_to sellable_path(assigns(:sellable))
  end

  test "should show sellable" do
    get :show, id: @sellable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sellable
    assert_response :success
  end

  test "should update sellable" do
    patch :update, id: @sellable, sellable: { description: @sellable.description, name: @sellable.name, price_per_unit_CI: @sellable.price_per_unit_CI, price_per_unit_c: @sellable.price_per_unit_c, price_per_unit_nc: @sellable.price_per_unit_nc, price_per_unit_permanencier: @sellable.price_per_unit_permanencier, sellable_type_id: @sellable.sellable_type_id, stock: @sellable.stock, unit: @sellable.unit }
    assert_redirected_to sellable_path(assigns(:sellable))
  end

  test "should destroy sellable" do
    assert_difference('Sellable.count', -1) do
      delete :destroy, id: @sellable
    end

    assert_redirected_to sellables_path
  end
end

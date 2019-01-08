require 'test_helper'

class StockMovementDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stock_movement_detail = stock_movement_details(:one)
  end

  test "should get index" do
    get stock_movement_details_url
    assert_response :success
  end

  test "should get new" do
    get new_stock_movement_detail_url
    assert_response :success
  end

  test "should create stock_movement_detail" do
    assert_difference('StockMovementDetail.count') do
      post stock_movement_details_url, params: { stock_movement_detail: { amount: @stock_movement_detail.amount, product_id: @stock_movement_detail.product_id, quantity: @stock_movement_detail.quantity, status: @stock_movement_detail.status, stock_movement_id: @stock_movement_detail.stock_movement_id, unit_price: @stock_movement_detail.unit_price, user_id: @stock_movement_detail.user_id } }
    end

    assert_redirected_to stock_movement_detail_url(StockMovementDetail.last)
  end

  test "should show stock_movement_detail" do
    get stock_movement_detail_url(@stock_movement_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_stock_movement_detail_url(@stock_movement_detail)
    assert_response :success
  end

  test "should update stock_movement_detail" do
    patch stock_movement_detail_url(@stock_movement_detail), params: { stock_movement_detail: { amount: @stock_movement_detail.amount, product_id: @stock_movement_detail.product_id, quantity: @stock_movement_detail.quantity, status: @stock_movement_detail.status, stock_movement_id: @stock_movement_detail.stock_movement_id, unit_price: @stock_movement_detail.unit_price, user_id: @stock_movement_detail.user_id } }
    assert_redirected_to stock_movement_detail_url(@stock_movement_detail)
  end

  test "should destroy stock_movement_detail" do
    assert_difference('StockMovementDetail.count', -1) do
      delete stock_movement_detail_url(@stock_movement_detail)
    end

    assert_redirected_to stock_movement_details_url
  end
end

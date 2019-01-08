require 'test_helper'

class DeliveryMenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delivery_man = delivery_men(:one)
  end

  test "should get index" do
    get delivery_men_url
    assert_response :success
  end

  test "should get new" do
    get new_delivery_man_url
    assert_response :success
  end

  test "should create delivery_man" do
    assert_difference('DeliveryMan.count') do
      post delivery_men_url, params: { delivery_man: { address: @delivery_man.address, city: @delivery_man.city, country: @delivery_man.country, email: @delivery_man.email, name: @delivery_man.name, phone: @delivery_man.phone, status: @delivery_man.status, user_id: @delivery_man.user_id } }
    end

    assert_redirected_to delivery_man_url(DeliveryMan.last)
  end

  test "should show delivery_man" do
    get delivery_man_url(@delivery_man)
    assert_response :success
  end

  test "should get edit" do
    get edit_delivery_man_url(@delivery_man)
    assert_response :success
  end

  test "should update delivery_man" do
    patch delivery_man_url(@delivery_man), params: { delivery_man: { address: @delivery_man.address, city: @delivery_man.city, country: @delivery_man.country, email: @delivery_man.email, name: @delivery_man.name, phone: @delivery_man.phone, status: @delivery_man.status, user_id: @delivery_man.user_id } }
    assert_redirected_to delivery_man_url(@delivery_man)
  end

  test "should destroy delivery_man" do
    assert_difference('DeliveryMan.count', -1) do
      delete delivery_man_url(@delivery_man)
    end

    assert_redirected_to delivery_men_url
  end
end

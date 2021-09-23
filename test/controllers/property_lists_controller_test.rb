require 'test_helper'

class PropertyListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property_list = property_lists(:one)
  end

  test "should get index" do
    get property_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_property_list_url
    assert_response :success
  end

  test "should create property_list" do
    assert_difference('PropertyList.count') do
      post property_lists_url, params: { property_list: { address: @property_list.address, age: @property_list.age, property: @property_list.property, remark: @property_list.remark, rent: @property_list.rent } }
    end

    assert_redirected_to property_list_url(PropertyList.last)
  end

  test "should show property_list" do
    get property_list_url(@property_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_list_url(@property_list)
    assert_response :success
  end

  test "should update property_list" do
    patch property_list_url(@property_list), params: { property_list: { address: @property_list.address, age: @property_list.age, property: @property_list.property, remark: @property_list.remark, rent: @property_list.rent } }
    assert_redirected_to property_list_url(@property_list)
  end

  test "should destroy property_list" do
    assert_difference('PropertyList.count', -1) do
      delete property_list_url(@property_list)
    end

    assert_redirected_to property_lists_url
  end
end

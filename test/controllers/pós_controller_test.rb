require 'test_helper'

class PósControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pó = pós(:one)
  end

  test "should get index" do
    get pós_url
    assert_response :success
  end

  test "should get new" do
    get new_pó_url
    assert_response :success
  end

  test "should create pó" do
    assert_difference('Pó.count') do
      post pós_url, params: { pó: {  } }
    end

    assert_redirected_to pó_url(Pó.last)
  end

  test "should show pó" do
    get pó_url(@pó)
    assert_response :success
  end

  test "should get edit" do
    get edit_pó_url(@pó)
    assert_response :success
  end

  test "should update pó" do
    patch pó_url(@pó), params: { pó: {  } }
    assert_redirected_to pó_url(@pó)
  end

  test "should destroy pó" do
    assert_difference('Pó.count', -1) do
      delete pó_url(@pó)
    end

    assert_redirected_to pós_url
  end
end

require 'test_helper'

class RyokutyasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ryokutya = ryokutyas(:one)
  end

  test "should get index" do
    get ryokutyas_url
    assert_response :success
  end

  test "should get new" do
    get new_ryokutya_url
    assert_response :success
  end

  test "should create ryokutya" do
    assert_difference('Ryokutya.count') do
      post ryokutyas_url, params: { ryokutya: {  } }
    end

    assert_redirected_to ryokutya_url(Ryokutya.last)
  end

  test "should show ryokutya" do
    get ryokutya_url(@ryokutya)
    assert_response :success
  end

  test "should get edit" do
    get edit_ryokutya_url(@ryokutya)
    assert_response :success
  end

  test "should update ryokutya" do
    patch ryokutya_url(@ryokutya), params: { ryokutya: {  } }
    assert_redirected_to ryokutya_url(@ryokutya)
  end

  test "should destroy ryokutya" do
    assert_difference('Ryokutya.count', -1) do
      delete ryokutya_url(@ryokutya)
    end

    assert_redirected_to ryokutyas_url
  end
end

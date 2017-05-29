require 'test_helper'

class TpasisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tpasi = tpasis(:one)
  end

  test "should get index" do
    get tpasis_url
    assert_response :success
  end

  test "should get new" do
    get new_tpasi_url
    assert_response :success
  end

  test "should create tpasi" do
    assert_difference('Tpasi.count') do
      post tpasis_url, params: { tpasi: { nomtpasi: @tpasi.nomtpasi } }
    end

    assert_redirected_to tpasi_url(Tpasi.last)
  end

  test "should show tpasi" do
    get tpasi_url(@tpasi)
    assert_response :success
  end

  test "should get edit" do
    get edit_tpasi_url(@tpasi)
    assert_response :success
  end

  test "should update tpasi" do
    patch tpasi_url(@tpasi), params: { tpasi: { nomtpasi: @tpasi.nomtpasi } }
    assert_redirected_to tpasi_url(@tpasi)
  end

  test "should destroy tpasi" do
    assert_difference('Tpasi.count', -1) do
      delete tpasi_url(@tpasi)
    end

    assert_redirected_to tpasis_url
  end
end

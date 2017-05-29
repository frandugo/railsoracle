require 'test_helper'

class EncnotaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @encnotum = encnota(:one)
  end

  test "should get index" do
    get encnota_url
    assert_response :success
  end

  test "should get new" do
    get new_encnotum_url
    assert_response :success
  end

  test "should create encnotum" do
    assert_difference('Encnotum.count') do
      post encnota_url, params: { encnotum: { idasi: @encnotum.idasi, idcu: @encnotum.idcu, iddoce: @encnotum.iddoce, idgru: @encnotum.idgru, idpe: @encnotum.idpe } }
    end

    assert_redirected_to encnotum_url(Encnotum.last)
  end

  test "should show encnotum" do
    get encnotum_url(@encnotum)
    assert_response :success
  end

  test "should get edit" do
    get edit_encnotum_url(@encnotum)
    assert_response :success
  end

  test "should update encnotum" do
    patch encnotum_url(@encnotum), params: { encnotum: { idasi: @encnotum.idasi, idcu: @encnotum.idcu, iddoce: @encnotum.iddoce, idgru: @encnotum.idgru, idpe: @encnotum.idpe } }
    assert_redirected_to encnotum_url(@encnotum)
  end

  test "should destroy encnotum" do
    assert_difference('Encnotum.count', -1) do
      delete encnotum_url(@encnotum)
    end

    assert_redirected_to encnota_url
  end
end

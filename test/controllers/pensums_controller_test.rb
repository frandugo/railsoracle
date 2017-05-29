require 'test_helper'

class PensumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pensum = pensums(:one)
  end

  test "should get index" do
    get pensums_url
    assert_response :success
  end

  test "should get new" do
    get new_pensum_url
    assert_response :success
  end

  test "should create pensum" do
    assert_difference('Pensum.count') do
      post pensums_url, params: { pensum: { fechaf: @pensum.fechaf, fechai: @pensum.fechai, idasi: @pensum.idasi, idcu: @pensum.idcu } }
    end

    assert_redirected_to pensum_url(Pensum.last)
  end

  test "should show pensum" do
    get pensum_url(@pensum)
    assert_response :success
  end

  test "should get edit" do
    get edit_pensum_url(@pensum)
    assert_response :success
  end

  test "should update pensum" do
    patch pensum_url(@pensum), params: { pensum: { fechaf: @pensum.fechaf, fechai: @pensum.fechai, idasi: @pensum.idasi, idcu: @pensum.idcu } }
    assert_redirected_to pensum_url(@pensum)
  end

  test "should destroy pensum" do
    assert_difference('Pensum.count', -1) do
      delete pensum_url(@pensum)
    end

    assert_redirected_to pensums_url
  end
end

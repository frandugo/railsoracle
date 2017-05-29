require 'test_helper'

class TpdocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tpdoc = tpdocs(:one)
  end

  test "should get index" do
    get tpdocs_url
    assert_response :success
  end

  test "should get new" do
    get new_tpdoc_url
    assert_response :success
  end

  test "should create tpdoc" do
    assert_difference('Tpdoc.count') do
      post tpdocs_url, params: { tpdoc: { iddoc: @tpdoc.iddoc, tipodoc: @tpdoc.tipodoc } }
    end

    assert_redirected_to tpdoc_url(Tpdoc.last)
  end

  test "should show tpdoc" do
    get tpdoc_url(@tpdoc)
    assert_response :success
  end

  test "should get edit" do
    get edit_tpdoc_url(@tpdoc)
    assert_response :success
  end

  test "should update tpdoc" do
    patch tpdoc_url(@tpdoc), params: { tpdoc: { iddoc: @tpdoc.iddoc, tipodoc: @tpdoc.tipodoc } }
    assert_redirected_to tpdoc_url(@tpdoc)
  end

  test "should destroy tpdoc" do
    assert_difference('Tpdoc.count', -1) do
      delete tpdoc_url(@tpdoc)
    end

    assert_redirected_to tpdocs_url
  end
end

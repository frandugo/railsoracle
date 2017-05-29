require 'test_helper'

class PosgradosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @posgrado = posgrados(:one)
  end

  test "should get index" do
    get posgrados_url
    assert_response :success
  end

  test "should get new" do
    get new_posgrado_url
    assert_response :success
  end

  test "should create posgrado" do
    assert_difference('Posgrado.count') do
      post posgrados_url, params: { posgrado: { idpro: @posgrado.idpro, nompos: @posgrado.nompos, numtitulo: @posgrado.numtitulo } }
    end

    assert_redirected_to posgrado_url(Posgrado.last)
  end

  test "should show posgrado" do
    get posgrado_url(@posgrado)
    assert_response :success
  end

  test "should get edit" do
    get edit_posgrado_url(@posgrado)
    assert_response :success
  end

  test "should update posgrado" do
    patch posgrado_url(@posgrado), params: { posgrado: { idpro: @posgrado.idpro, nompos: @posgrado.nompos, numtitulo: @posgrado.numtitulo } }
    assert_redirected_to posgrado_url(@posgrado)
  end

  test "should destroy posgrado" do
    assert_difference('Posgrado.count', -1) do
      delete posgrado_url(@posgrado)
    end

    assert_redirected_to posgrados_url
  end
end

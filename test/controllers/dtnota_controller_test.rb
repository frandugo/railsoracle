require 'test_helper'

class DtnotaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dtnotum = dtnota(:one)
  end

  test "should get index" do
    get dtnota_url
    assert_response :success
  end

  test "should get new" do
    get new_dtnotum_url
    assert_response :success
  end

  test "should create dtnotum" do
    assert_difference('Dtnotum.count') do
      post dtnota_url, params: { dtnotum: { examen: @dtnotum.examen, idencnotas: @dtnotum.idencnotas, idnom: @dtnotum.idnom, quiz: @dtnotum.quiz, seguimiento: @dtnotum.seguimiento, taller: @dtnotum.taller } }
    end

    assert_redirected_to dtnotum_url(Dtnotum.last)
  end

  test "should show dtnotum" do
    get dtnotum_url(@dtnotum)
    assert_response :success
  end

  test "should get edit" do
    get edit_dtnotum_url(@dtnotum)
    assert_response :success
  end

  test "should update dtnotum" do
    patch dtnotum_url(@dtnotum), params: { dtnotum: { examen: @dtnotum.examen, idencnotas: @dtnotum.idencnotas, idnom: @dtnotum.idnom, quiz: @dtnotum.quiz, seguimiento: @dtnotum.seguimiento, taller: @dtnotum.taller } }
    assert_redirected_to dtnotum_url(@dtnotum)
  end

  test "should destroy dtnotum" do
    assert_difference('Dtnotum.count', -1) do
      delete dtnotum_url(@dtnotum)
    end

    assert_redirected_to dtnota_url
  end
end

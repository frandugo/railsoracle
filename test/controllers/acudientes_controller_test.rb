require 'test_helper'

class AcudientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acudiente = acudientes(:one)
  end

  test "should get index" do
    get acudientes_url
    assert_response :success
  end

  test "should get new" do
    get new_acudiente_url
    assert_response :success
  end

  test "should create acudiente" do
    assert_difference('Acudiente.count') do
      post acudientes_url, params: { acudiente: { ape1: @acudiente.ape1, ape2: @acudiente.ape2, iddoc: @acudiente.iddoc, nom1: @acudiente.nom1, nom2: @acudiente.nom2 } }
    end

    assert_redirected_to acudiente_url(Acudiente.last)
  end

  test "should show acudiente" do
    get acudiente_url(@acudiente)
    assert_response :success
  end

  test "should get edit" do
    get edit_acudiente_url(@acudiente)
    assert_response :success
  end

  test "should update acudiente" do
    patch acudiente_url(@acudiente), params: { acudiente: { ape1: @acudiente.ape1, ape2: @acudiente.ape2, iddoc: @acudiente.iddoc, nom1: @acudiente.nom1, nom2: @acudiente.nom2 } }
    assert_redirected_to acudiente_url(@acudiente)
  end

  test "should destroy acudiente" do
    assert_difference('Acudiente.count', -1) do
      delete acudiente_url(@acudiente)
    end

    assert_redirected_to acudientes_url
  end
end

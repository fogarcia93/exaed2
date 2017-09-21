require 'test_helper'

class GestionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gestione = gestiones(:one)
  end

  test "should get index" do
    get gestiones_url
    assert_response :success
  end

  test "should get new" do
    get new_gestione_url
    assert_response :success
  end

  test "should create gestione" do
    assert_difference('Gestione.count') do
      post gestiones_url, params: { gestione: { correo: @gestione.correo, departamento: @gestione.departamento, descripcion: @gestione.descripcion, my_file: @gestione.my_file, nombre: @gestione.nombre, telefono: @gestione.telefono, user_id: @gestione.user_id } }
    end

    assert_redirected_to gestione_url(Gestione.last)
  end

  test "should show gestione" do
    get gestione_url(@gestione)
    assert_response :success
  end

  test "should get edit" do
    get edit_gestione_url(@gestione)
    assert_response :success
  end

  test "should update gestione" do
    patch gestione_url(@gestione), params: { gestione: { correo: @gestione.correo, departamento: @gestione.departamento, descripcion: @gestione.descripcion, my_file: @gestione.my_file, nombre: @gestione.nombre, telefono: @gestione.telefono, user_id: @gestione.user_id } }
    assert_redirected_to gestione_url(@gestione)
  end

  test "should destroy gestione" do
    assert_difference('Gestione.count', -1) do
      delete gestione_url(@gestione)
    end

    assert_redirected_to gestiones_url
  end
end

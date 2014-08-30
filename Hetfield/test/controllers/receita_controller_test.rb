require 'test_helper'

class ReceitaControllerTest < ActionController::TestCase
  setup do
    @receitum = receita(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:receita)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create receitum" do
    assert_difference('Receitum.count') do
      post :create, receitum: { cloned_from_id: @receitum.cloned_from_id, deleted_at: @receitum.deleted_at, descricao: @receitum.descricao, titulo: @receitum.titulo, usuario_id: @receitum.usuario_id }
    end

    assert_redirected_to receitum_path(assigns(:receitum))
  end

  test "should show receitum" do
    get :show, id: @receitum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @receitum
    assert_response :success
  end

  test "should update receitum" do
    patch :update, id: @receitum, receitum: { cloned_from_id: @receitum.cloned_from_id, deleted_at: @receitum.deleted_at, descricao: @receitum.descricao, titulo: @receitum.titulo, usuario_id: @receitum.usuario_id }
    assert_redirected_to receitum_path(assigns(:receitum))
  end

  test "should destroy receitum" do
    assert_difference('Receitum.count', -1) do
      delete :destroy, id: @receitum
    end

    assert_redirected_to receita_path
  end
end

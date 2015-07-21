require 'test_helper'

class AdscriptionsControllerTest < ActionController::TestCase
  setup do
    @adscription = adscriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adscriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adscription" do
    assert_difference('Adscription.count') do
      post :create, adscription: { cod: @adscription.cod, name: @adscription.name }
    end

    assert_redirected_to adscription_path(assigns(:adscription))
  end

  test "should show adscription" do
    get :show, id: @adscription
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adscription
    assert_response :success
  end

  test "should update adscription" do
    patch :update, id: @adscription, adscription: { cod: @adscription.cod, name: @adscription.name }
    assert_redirected_to adscription_path(assigns(:adscription))
  end

  test "should destroy adscription" do
    assert_difference('Adscription.count', -1) do
      delete :destroy, id: @adscription
    end

    assert_redirected_to adscriptions_path
  end
end

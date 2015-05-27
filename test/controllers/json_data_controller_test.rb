require 'test_helper'

class JsonDataControllerTest < ActionController::TestCase
  setup do
    @json_datum = json_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:json_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create json_datum" do
    assert_difference('JsonDatum.count') do
      post :create, json_datum: { lat: @json_datum.lat, long: @json_datum.long, value: @json_datum.value }
    end

    assert_redirected_to json_datum_path(assigns(:json_datum))
  end

  test "should show json_datum" do
    get :show, id: @json_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @json_datum
    assert_response :success
  end

  test "should update json_datum" do
    patch :update, id: @json_datum, json_datum: { lat: @json_datum.lat, long: @json_datum.long, value: @json_datum.value }
    assert_redirected_to json_datum_path(assigns(:json_datum))
  end

  test "should destroy json_datum" do
    assert_difference('JsonDatum.count', -1) do
      delete :destroy, id: @json_datum
    end

    assert_redirected_to json_data_path
  end
end

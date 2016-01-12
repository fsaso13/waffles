require 'test_helper'

class RepportsControllerTest < ActionController::TestCase
  setup do
    @repport = repports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:repports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create repport" do
    assert_difference('Repport.count') do
      post :create, repport: { date: @repport.date, description: @repport.description, preview: @repport.preview, title: @repport.title }
    end

    assert_redirected_to repport_path(assigns(:repport))
  end

  test "should show repport" do
    get :show, id: @repport
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @repport
    assert_response :success
  end

  test "should update repport" do
    patch :update, id: @repport, repport: { date: @repport.date, description: @repport.description, preview: @repport.preview, title: @repport.title }
    assert_redirected_to repport_path(assigns(:repport))
  end

  test "should destroy repport" do
    assert_difference('Repport.count', -1) do
      delete :destroy, id: @repport
    end

    assert_redirected_to repports_path
  end
end

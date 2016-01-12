require 'test_helper'

class AccountPetitionsControllerTest < ActionController::TestCase
  setup do
    @account_petition = account_petitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:account_petitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account_petition" do
    assert_difference('AccountPetition.count') do
      post :create, account_petition: { description: @account_petition.description, title: @account_petition.title }
    end

    assert_redirected_to account_petition_path(assigns(:account_petition))
  end

  test "should show account_petition" do
    get :show, id: @account_petition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @account_petition
    assert_response :success
  end

  test "should update account_petition" do
    patch :update, id: @account_petition, account_petition: { description: @account_petition.description, title: @account_petition.title }
    assert_redirected_to account_petition_path(assigns(:account_petition))
  end

  test "should destroy account_petition" do
    assert_difference('AccountPetition.count', -1) do
      delete :destroy, id: @account_petition
    end

    assert_redirected_to account_petitions_path
  end
end

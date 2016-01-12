require 'test_helper'

class RoomPetitionsControllerTest < ActionController::TestCase
  setup do
    @room_petition = room_petitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:room_petitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create room_petition" do
    assert_difference('RoomPetition.count') do
      post :create, room_petition: { occupied: @room_petition.occupied, room_id: @room_petition.room_id, user_id: @room_petition.user_id }
    end

    assert_redirected_to room_petition_path(assigns(:room_petition))
  end

  test "should show room_petition" do
    get :show, id: @room_petition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @room_petition
    assert_response :success
  end

  test "should update room_petition" do
    patch :update, id: @room_petition, room_petition: { occupied: @room_petition.occupied, room_id: @room_petition.room_id, user_id: @room_petition.user_id }
    assert_redirected_to room_petition_path(assigns(:room_petition))
  end

  test "should destroy room_petition" do
    assert_difference('RoomPetition.count', -1) do
      delete :destroy, id: @room_petition
    end

    assert_redirected_to room_petitions_path
  end
end

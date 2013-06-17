require 'test_helper'

class AgendaItemsControllerTest < ActionController::TestCase
  setup do
    @agenda_item = agenda_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agenda_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agenda_item" do
    assert_difference('AgendaItem.count') do
      post :create, agenda_item: { title: @agenda_item.title }
    end

    assert_redirected_to agenda_item_path(assigns(:agenda_item))
  end

  test "should show agenda_item" do
    get :show, id: @agenda_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agenda_item
    assert_response :success
  end

  test "should update agenda_item" do
    patch :update, id: @agenda_item, agenda_item: { title: @agenda_item.title }
    assert_redirected_to agenda_item_path(assigns(:agenda_item))
  end

  test "should destroy agenda_item" do
    assert_difference('AgendaItem.count', -1) do
      delete :destroy, id: @agenda_item
    end

    assert_redirected_to agenda_items_path
  end
end

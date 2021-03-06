require 'test_helper'

class SavedSearchesControllerTest < ActionController::TestCase
  setup do
    @saved_search = saved_searches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:saved_searches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create saved_search" do
    assert_difference('SavedSearch.count') do
      post :create, saved_search: { description: @saved_search.description, name: @saved_search.name, params: @saved_search.params, searched_index: @saved_search.searched_index, user_id: @saved_search.user_id }
    end

    assert_redirected_to saved_search_path(assigns(:saved_search))
  end

  test "should show saved_search" do
    get :show, id: @saved_search
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @saved_search
    assert_response :success
  end

  test "should update saved_search" do
    patch :update, id: @saved_search, saved_search: { description: @saved_search.description, name: @saved_search.name, params: @saved_search.params, searched_index: @saved_search.searched_index, user_id: @saved_search.user_id }
    assert_redirected_to saved_search_path(assigns(:saved_search))
  end

  test "should destroy saved_search" do
    assert_difference('SavedSearch.count', -1) do
      delete :destroy, id: @saved_search
    end

    assert_redirected_to saved_searches_path
  end
end

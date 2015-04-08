require 'test_helper'

class NgRubiesControllerTest < ActionController::TestCase
  setup do
    @ng_ruby = ng_rubies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ng_rubies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ng_ruby" do
    assert_difference('NgRuby.count') do
      post :create, ng_ruby: { name: @ng_ruby.name }
    end

    assert_redirected_to ng_ruby_path(assigns(:ng_ruby))
  end

  test "should show ng_ruby" do
    get :show, id: @ng_ruby
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ng_ruby
    assert_response :success
  end

  test "should update ng_ruby" do
    patch :update, id: @ng_ruby, ng_ruby: { name: @ng_ruby.name }
    assert_redirected_to ng_ruby_path(assigns(:ng_ruby))
  end

  test "should destroy ng_ruby" do
    assert_difference('NgRuby.count', -1) do
      delete :destroy, id: @ng_ruby
    end

    assert_redirected_to ng_rubies_path
  end
end

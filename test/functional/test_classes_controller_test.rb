require 'test_helper'

class TestClassesControllerTest < ActionController::TestCase
  setup do
    @test_class = test_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_class" do
    assert_difference('TestClass.count') do
      post :create, test_class: { string: @test_class.string }
    end

    assert_redirected_to test_class_path(assigns(:test_class))
  end

  test "should show test_class" do
    get :show, id: @test_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_class
    assert_response :success
  end

  test "should update test_class" do
    put :update, id: @test_class, test_class: { string: @test_class.string }
    assert_redirected_to test_class_path(assigns(:test_class))
  end

  test "should destroy test_class" do
    assert_difference('TestClass.count', -1) do
      delete :destroy, id: @test_class
    end

    assert_redirected_to test_classes_path
  end
end

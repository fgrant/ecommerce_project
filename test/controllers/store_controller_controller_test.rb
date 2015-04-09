require 'test_helper'

class StoreControllerControllerTest < ActionController::TestCase
  test "should get all_products" do
    get :all_products
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get cats" do
    get :cats
    assert_response :success
  end

  test "should get dogs" do
    get :dogs
    assert_response :success
  end

  test "should get small_animals" do
    get :small_animals
    assert_response :success
  end

  test "should get birds" do
    get :birds
    assert_response :success
  end

  test "should get sale" do
    get :sale
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get updated" do
    get :updated
    assert_response :success
  end

end

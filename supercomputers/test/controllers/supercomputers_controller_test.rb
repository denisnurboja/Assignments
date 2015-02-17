require 'test_helper'

class SupercomputersControllerTest < ActionController::TestCase
  setup do
    @supercomputer = supercomputers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supercomputers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supercomputer" do
    assert_difference('Supercomputer.count') do
      post :create, supercomputer: { city: @supercomputer.city, country: @supercomputer.country, memory: @supercomputer.memory, name: @supercomputer.name, power: @supercomputer.power, rank: @supercomputer.rank, speed: @supercomputer.speed }
    end

    assert_redirected_to supercomputer_path(assigns(:supercomputer))
  end

  test "should show supercomputer" do
    get :show, id: @supercomputer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supercomputer
    assert_response :success
  end

  test "should update supercomputer" do
    patch :update, id: @supercomputer, supercomputer: { city: @supercomputer.city, country: @supercomputer.country, memory: @supercomputer.memory, name: @supercomputer.name, power: @supercomputer.power, rank: @supercomputer.rank, speed: @supercomputer.speed }
    assert_redirected_to supercomputer_path(assigns(:supercomputer))
  end

  test "should destroy supercomputer" do
    assert_difference('Supercomputer.count', -1) do
      delete :destroy, id: @supercomputer
    end

    assert_redirected_to supercomputers_path
  end
end

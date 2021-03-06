require 'test_helper'

class ZombiesControllerTest < ActionController::TestCase
  setup do
    @zombie = zombies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zombies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zombie" do
    assert_difference('Zombie.count') do
      post :create, zombie: { admissao: @zombie.admissao, apodrecendo: @zombie.apodrecendo, bio: @zombie.bio, email: @zombie.email, heranca: @zombie.heranca, idade: @zombie.idade, nascimento: @zombie.nascimento, nome: @zombie.nome, salario: @zombie.salario }
    end

    assert_redirected_to zombie_path(assigns(:zombie))
  end

  test "should show zombie" do
    get :show, id: @zombie
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zombie
    assert_response :success
  end

  test "should update zombie" do
    patch :update, id: @zombie, zombie: { admissao: @zombie.admissao, apodrecendo: @zombie.apodrecendo, bio: @zombie.bio, email: @zombie.email, heranca: @zombie.heranca, idade: @zombie.idade, nascimento: @zombie.nascimento, nome: @zombie.nome, salario: @zombie.salario }
    assert_redirected_to zombie_path(assigns(:zombie))
  end

  test "should destroy zombie" do
    assert_difference('Zombie.count', -1) do
      delete :destroy, id: @zombie
    end

    assert_redirected_to zombies_path
  end
end

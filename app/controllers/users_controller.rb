class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    authorize! :index, @user, :message => 'Solo el administrador puede listar los usuarios existentes.'
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    authorize! :update, @user, :message => 'Solo el administrador puede actualizar datos de usuario'
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to users_path, :notice => "Usuario actualizado"
    else
      redirect_to users_path, :notice => "No se puede actualizar al usuario"
    end
  end
  
  def destroy
    authorize! :destroy, @user, :message => 'Solo el administrador puede borrar un usuario.'
    user = User.find(params[:id])
    unless user == current_user
      user.destroy
      redirect_to users_path, :notice => "Usuario eliminado."
    else
      redirect_to users_path, :notice => "No se puede eliminar a si mismo."
    end
  end

end

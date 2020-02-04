class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @books= Book.where(user_id: current_user.id)
    @book= Book.new
    @user =current_user
    @users= User.all
  end

  def show
     @user = User.find(params[:id])
     @book = Book.new
     @books = @user.books
  end
  
  def edit
    @user = User.find(params[:id])
    if @user.id != current_user.id
      redirect_to user_path(current_user.id)
    end
  end
  
  def update
    @user= User.find(params[:id])
    if @user.update(user_params)
    redirect_to user_path(current_user.id), notice: "You have updated user successfully."
    else
      render :edit
    end

    def ensure_correct_user

      if @current_user.id !=  params[:id].to_i
    
       redirect_to("/posts/index")
    
      end
    
    end

  end
  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)  
  end
end
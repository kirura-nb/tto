class RegistrationsController < ApplicationController
  def new
    @user_new = User.new
    # 学科プルダウンメニュー
    @departments = Department.pluck(:department, :id)
  end

  def edit

  end

  def create
      @user_new = User.new(user_params)

      if @user_new.save
          session[:department] = @user_new.department
          flash[:notice] = "アカウントを作成しました。"
          redirect_to index_list_path
      else
          flash.now[:alert] = "アカウント作成に失敗しました。"
          render action: "new"
      end
  end

  def update

  end

  private

  def user_params
      params.require(:user).permit(:name, :department, :number, :password)
  end
end
  
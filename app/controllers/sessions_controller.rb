class SessionsController < ApplicationController
  before_action :logged_in?, only: [:new, :create]
 
  def new

  end

  def create
      @user = User.find_by(department: params[:department], password: params[:password])
      if @user
          session[:department] = @user.department
          flash[:notice] = "ログインに成功しました。"
          redirect_to memos_path
      else
          flash[:alert] = "ログインに失敗しました。"
          render action: "new"
      end
  end

  def destroy
      session[:department] = nil
      redirect_to new_sessions_path
  end

  private

  def logged_in?
      if session[:department]
          @user = User.find(session[:department])
          flash[:notice] = "すでにログインしています。"
          redirect_to memos_path
      end
  end
end
  
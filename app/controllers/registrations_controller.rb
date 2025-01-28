class RegistrationsController < ApplicationController
    def new
    end
  
    def create
      # 簡易的な例です。本番では適切なバリデーションを追加してください。
      @name = params[:name]
      @department = params[:department]
      @student_id = params[:student_id]
      @password = params[:password]
      @password_confirmation = params[:password_confirmation]
  
      if @password == @password_confirmation && @password.length.between?(8, 16)
        flash[:notice] = "登録が成功しました"
        redirect_to action: :new
      else
        flash[:alert] = "登録に失敗しました"
        render :new
      end
    end
  end
  
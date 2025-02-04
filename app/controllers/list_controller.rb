class ListController < ApplicationController
    before_action :current_user
 
    def index
      # 問題db（表示）
      @problem = Problem.new
      @problems = Problem.all.order(created_at: :desc)
  
      # 資格種類db（表示）
      # @exam_type = Exam_type.new
      # @exam_types = Exam_type.all.order(created_at: :desc)
    end
   
    def create
      # 問題作成
    end
  
    def destroy
      # 問題削除
    end
   
    private
    
    def current_user
      if session[:department]
        @user = User.find(session[:department])
      else
        flash[:alert] = "ログインする必要があります。"
        redirect_to new_sessions_path
      end
    end
end

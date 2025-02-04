class UsersController < ApplicationController
    def new
        @user_new = User.new
        # 学科情報を取得
        @departments = Department.pluck(:department, :id) # :department と :id を配列で取得
      end

    def edit
    end

    def create
        @user_new = User.new(user_params)

        # パスワードと確認用パスワードが一致するか確認
        # if @user_new.password == @user_new.re_password
            if @user_new.save
                session[:number] = @user_new.number
                flash[:notice] = "アカウントを作成しました。"
                redirect_to index_list_path
            else
                flash.now[:alert] = "アカウント作成に失敗しました。"
                render action: "new"
            end
        # else
        #     flash.now[:alert] = "パスワードが一致しません。再度、入力をお願いします。"
        #     render action: "new"
        # end
    end

    def update
        @user_new = User.find(params[:id])

        # 更新処理が必要な場合はここで適切に処理を記述
        if @user_new.update(user_params)
            flash[:notice] = "アカウント情報を更新しました。"
            redirect_to index_list_path
        else
            flash.now[:alert] = "アカウント情報の更新に失敗しました。"
            render action: "edit"
        end
    end

    private

    def user_params
        
        user_params = params.permit(:name, :department, :number, :password, :re_password)
        
        # department を整数に変換
        user_params["department"] = user_params["department"].to_i
        user_params[:password] = user_params[:password].to_i
        user_params[:re_password] = user_params[:re_password].to_i
      
        # 変換後のパラメータを確認
        puts "After conversion: #{user_params["department"]}"

        if user_params[:department] == 6
            # it = Department.find_by(department: "IT学科")
            user_params[:department_id] = Department.find_by(department: "IT学科").id
            protect_from_forgery :except => [:department_id]
        end
        user_params.permit(:name, :department_id, :number, :password, :re_password)
      end
end

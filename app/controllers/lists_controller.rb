class ListsController < ApplicationController
  def new
    #Viewへ渡すためのインスタンス変数に空のmodelオブジェクトを生成する。
    @list=List.new
  end

  def create #1/$2.データを受け取り新規登録するためのインスタンス作成
    list=List.new(list_params)
    list.save # 3. データをデータベースに保存するためのsaveメソッド実行
    redirect_to'/top' # 4. トップ画面へリダイレクト
  end

  def index
  end

  def show
  end

  def edit
  end

  private #ストロングパラメータ
  def list_params
    params.require(:list).permit(:title,:body)
  end

end

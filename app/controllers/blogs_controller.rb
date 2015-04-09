# coding: utf-8
class BlogsController < ApplicationController

  before_action :set_blog, only: [:show, :destroy, :edit, :update, :show]
  # トップページの定義
  # トップページには、投稿へのリンク・及び全ての記事の表示全ての記事に置いて編集ページ（内容の編集・削除）を行えるようにする。
  def index
    @blog = Blog.all
  end

  # 記事作成ページ
  def new
    @blog = Blog.new
  end

  # 記事作成create
  def create
    @blog = Blog.new(blogs_params)
    if @blog.save
      redirect_to blogs_path
    else
      render 'new'
    end
  end

  # 記事編集ページ
  def edit
    # 必要な処理は、before_actionで定義済み
  end

  # 記事編集update
  def update
    if @blog.update(blogs_params)
      redirect_to blogs_path
    else
      render 'edit'
    end
  end

  # 全文表示ページ
  def show
    # 必要な処理は、before_actionで定義済み
  end

  # 記事削除コマンド
  def destroy
    @blog.destroy
    redirect_to blogs_path
  end

  private

  # 記事のidを取得するメソッド
  def set_blog
    @blog = Blog.find(params[:id])
  end

  # 入力されたパラメータを保持する。
  def blogs_params
    params[:blog].permit(:title, :main)
  end

  # 全文表示
  def show

  end

  # 全文表示
  def show
    # 必要な処理は、before_actionで定義済み
  end

end

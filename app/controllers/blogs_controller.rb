# coding: utf-8
class BlogsController < ApplicationController
  
  #
  before_action :set_blog, only: [:show, :destroy]
  #トップページの定義
  #トップページには、投稿へのリンク・及び全ての記事の表示全ての記事に置いて編集ページ（内容の編集・削除）を行えるようにする。
  def index
    @blog = Blog.all
  end
  
  #作成画面
  #作成画面には、タイトルと本文を入力できるようにする。
  def new
    @blog = Blog.new
  end
  
  def create
    #blogの情報を取得し、投稿データを保存する。
    @blog = Blog.new(params[:blog].permit(:title , :main))
    @blog.save
    redirect_to blogs_path
  end
  
  def show
    
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path
  end
  
  
  def set_blog

  end
  
  
end

# coding: utf-8
class BlogsController < ApplicationController

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
    @blog = Blog.new(params[:blog].permit(:title , :main))
    @blog.save
    redirect_to blogs_path
  end
      
end

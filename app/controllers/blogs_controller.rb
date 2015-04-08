# coding: utf-8
class BlogsController < ApplicationController
  
  #
  before_action :set_blog, only: [:show, :destroy, :edit, :update, :show]
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
    @blog = Blog.new(blogs_params)
    @blog.save
    redirect_to blogs_path
  end

  def edit
    
  end

  
  def update
    @blog.update(blogs_params)
    redirect_to blogs_path
  end
  
  def show
    
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path
  end
  
  private

  def set_blog
    @blog = Blog.find(params[:id])
  end

  def blogs_params
    params[:blog].permit(:title, :main)
  end

  #全文表示  
  def show
    
  end
  
end

# coding: utf-8
class Blog < ActiveRecord::Base
  validates :title, presence:{message: "タイトルが指定されていません。"}
  validates :main, presence:{message: "本文が指定されていません。"}
end

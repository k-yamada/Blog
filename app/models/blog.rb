# coding: utf-8
class Blog < ActiveRecord::Base
  validates :title, :main, presence:{ message: "タイトルもしくは本文が空です。"}
end

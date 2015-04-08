class Blog < ActiveRecord::Base
  validates :title, :main, presence: true
end

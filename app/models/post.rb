class Post < ApplicationRecord
  validates :title,presence:true
  validates :start_day,presence:true
  validates :end_day,presence:true
end

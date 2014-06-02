class Item < ActiveRecord::Base
  belongs_to :user
  has_many :subcomments, class_name: Item, foreign_key: :parent_id
  belongs_to :parent, class_name: Item
end

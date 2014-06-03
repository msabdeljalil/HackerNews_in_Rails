class Item < ActiveRecord::Base

  belongs_to :user
  has_many :subcomments, class_name: "Item", foreign_key: :parent_id
  belongs_to :parent, class_name: "Item"

	validates :name, presence: true, length: { minimum: 5 }
end

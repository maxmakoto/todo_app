class Item < ActiveRecord::Base
  belongs_to :list
  has_many :item_tags
  has_many :tags, :through => :item_tags
end

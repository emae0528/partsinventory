class Item < ActiveRecord::Base
  attr_accessible :comments, :member_id, :name, :price, :quantity, :source, :status

  validates :name, presence: true
  validates :price, presence: true, numericality: true
  validates :quantity, presence: true, numericality: true
  validates :source, presence: true
  validates :status, presence: true

  belongs_to :member
end

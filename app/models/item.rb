class Item < ActiveRecord::Base
  attr_accessible :comments, :member_id, :name, :price, :quantity, :source, :status

  STATUS = ["Need", "Pending", "Order Complete", "Delivered"]

  validates :name, presence: true
  validates :price, presence: true, numericality: true
  validates :quantity, presence: true, numericality: true
  validates :source, presence: true
  validates :status, presence: true, inclusion: { in: STATUS }

  belongs_to :member

  scope :recent_pending, lambda { where(:status => "Pending") }
  scope :recent_need, lambda { where(:status => "Need") }
  scope :recent_order, lambda { where(:status => "Delivered")}
  scope :recent_delivered, lambda { where(:status => "Order Complete") }

end
